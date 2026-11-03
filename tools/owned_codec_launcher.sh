#!/bin/sh
# Owned compiler launcher; strict source path and SHA allowlist for two C TUs.
set -eu
[ "$#" -ge 3 ] || exit 69
compiler="$1"
case "$compiler" in
  */x86_64-w64-mingw32-gcc-posix|x86_64-w64-mingw32-gcc-posix) ;;
  *) echo "OWN008_UNEXPECTED_COMPILER:$compiler" >&2; exit 70 ;;
esac
match=""
for arg in "$@"; do
  case "$arg" in
    /build/leptonica-src/src/jpegio.c) [ -z "$match" ] || exit 71; match="jpegio" ;;
    /build/leptonica-src/src/pngio.c) [ -z "$match" ] || exit 71; match="pngio" ;;
    */jpegio.c|*/pngio.c|jpegio.c|pngio.c) echo "OWN008_PATH_SCOPE_REJECT:$arg" >&2; exit 72 ;;
  esac
done
if [ -n "$match" ]; then
  case "$match" in
    jpegio) src=/build/leptonica-src/src/jpegio.c; expected=213f534db5eb336ae1347b9559071b6dc01849f7a5df1c3eb44e5a3d6259a0f9 ;;
    pngio) src=/build/leptonica-src/src/pngio.c; expected=8f776c58c505200bfc23938eedcaf6b642d83dc8a04b70b964c46232b545f880 ;;
  esac
  actual=$(sha256sum "$src") || exit 73
  actual=${actual%% *}
  [ "$actual" = "$expected" ] || { echo "OWN008_SOURCE_SHA_REJECT:$match" >&2; exit 74; }
  echo "OWN008_HEADER_APPLIED:$match:$actual" >&2
  exec "$@" -include /opt/owned008/owned_setjmp_compat.h
fi
exec "$@"

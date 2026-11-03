# Notes on the source tools

These notes preserve useful explanations from the source comments. Build verification retains its fail-closed checks; current pins select the notice-only derived context described below. Build and codec-test prerequisites are described in [BUILD.md](BUILD.md) and [TESTING.md](TESTING.md).

## Codec fixtures and compiler selection

The PNG fixture generator creates three distinct damaged inputs: a stream truncated within IDAT while retaining its signature and IHDR; a complete, readable buffer with a changed IDAT CRC; and a 16-byte buffer with a valid signature but an incomplete IHDR. These cases exercise different error paths. A missing-PIX guard does not demonstrate coverage of libpng's internal longjmp path.

Run the fixture generator only when the required valid fixtures are present in the intended working copy. It reads and writes fixture files at module scope, so importing it also runs the generator.

The codec-control runner resolves only the compilers selected by `--compiler`. A compiler you did not select does not need to be installed or configured. Compiler paths are explicit inputs or come from the user's ordinary PATH. The separate user-validation script requires both compilers and compiles the Delphi package. Its child-process records include creation time obtained from Windows without requiring `psutil`.

## Frozen native build inputs

The Dockerfile and compiler launcher retain their accepted bytes. The setjmp compatibility header now starts with a copyright notice followed by its exact previous 712-byte body. Keeping that body, including its historical comments, is an explicit source-cleanup exception for the ABI overlay. The consumer lock records the parent lock and context digest, the new notice, and the preserved body hash. Historical native acceptance applies to the ancestor inputs; no native DLL was rebuilt or accepted for this source-only derivative. The recipe retains historical preparation notes; use [BUILD.md](BUILD.md) for the current scope.

The assembler still verifies the unchanged original 147-file context and creates a separate 149-file consumer context. It copies files without hardlinks and checks every resulting size and hash against the current derived lock. Its aggregate digest covers sorted paths, byte counts, and all raw file bytes. The new digest was measured by streaming the original context once, reproducing the accepted parent context and substituting only the new header. Updating a source file without updating and validating this complete lock remains an error.

The wrapper receives the external context and Python executable explicitly. Its packaged adapter and lock are local dependencies. For a build route, the adapter requires explicit WSL, distribution, Docker, and image-tag inputs. It converts the verified Windows path within the selected WSL distribution and checks the reverse mapping and Dockerfile bytes. An optional WSL path is only a checked hint.

Verify-only mode reads the context and writes the requested audit report. Route-only mode also checks path translation and records the route. Neither mode launches Docker. A full build uses the explicit build option and runs the existing offline checks first.

## Archives

The archive producer needs the complete source tree and the exact external DLL even when producing the source archive. It excludes the root `ARCHIVE-MANIFEST.json` from the source-member set and creates a new manifest from the selected bytes. Source and complete archives receive distinct status metadata.

The archive verifier checks a separately distributed CrossLept ZIP and extracts it into a new destination. It does not compile or install the library. A source archive contains no DLL, and successful packaging or extraction does not by itself establish release acceptance.

# Installation notes

Add `pascal/` to your Pascal compiler's unit search path. An application needs a matching Leptonica 1.87.0 Win64 DLL, obtained separately.

The DLL used in the accepted complete package had this SHA-256:

```text
5d85e3f3c0a586eda168aa5757fd657ebcdfd173f1db6eb25451061504e48700
```

`tools/install-verified-win64.ps1` requires `DllSource`, `ExpectedSha256`, and a new or empty `InstallDirectory`. The script has not been executed against this selected publication copy. No `bin/leptonica-1.87.0.dll` is included.

Full codec testing also needs the six fixtures and other inputs from the matching complete distribution. This source subset does not supply them. See [testing scope](TESTING.md).

# Install and try Leptonica

Build `bin/leptonica-1.87.0.dll` from the matching companion source asset. See the [build guide](BUILD.md).

In Delphi 13.2, open `examples/LeptonicaHello.dproj` and select Windows 64-bit. In Lazarus 4.8, open `examples/LeptonicaHello.lpi` and use FPC 3.2.2 for Windows x64. Build and run the project. It prints the loaded library path and writes a 256 × 96 grayscale gradient PNG beside the executable. Press Enter to close the console.

Use `pascal/` in the unit search path when adding the bindings to your own project. The example already provides its search paths. Keep its directory layout so it can locate the native library.

# CrossPascal Leptonica

## Prepare and Run

Download [Prepare-LeptonicaHello-ea016.zip](https://github.com/pisarev/crosspascal/releases/download/early-access-016/Prepare-LeptonicaHello-ea016.zip), extract it, and double-click **Prepare.cmd**. It downloads the matched dependencies and sample data, then opens the prepared project folder. Open the **.dproj** in Delphi 13.2 or the **.lpi** in Lazarus 4.8, and press **Run**. See the [complete preparation guide](https://github.com/pisarev/crosspascal/blob/main/docs/PREPARE-EXAMPLES.md) for public downloads and optional GitHub request-limit recovery, model sizes and the other examples.


Build document-image tools in Object Pascal with Leptonica. Use the bindings to create and inspect Pix images, convert pixel formats, and prepare photographs or scans for later processing. The higher-level helpers manage common Pix operations from Pascal.

## Try it on Windows x64

1. Build `leptonica-1.87.0.dll` from the matching native source asset using its README. Place the resulting DLL in this repository's `bin` directory.
2. In Delphi 13.2, open `examples\LeptonicaHello.dproj` and select Windows 64-bit. In Lazarus 4.8 with FPC 3.2.2, open `examples\LeptonicaHello.lpi` and build for Windows x64.
3. Build and run the example. It writes a **256 × 96** grayscale gradient PNG beside the executable and prints its path.

The project supplies its unit search paths. A standalone install needs this repository and its matching native source asset. The example works independently of OpenCV, TVM, and the model converter.

Use the runtime package for your IDE in [packages](packages/) to reuse the bindings. See [the build notes](BUILD.md), [known issues](KNOWN-ISSUES.md), and [third-party notices](THIRD-PARTY-NOTICES.md) for the exact codec inputs, upstream notices, and component limits.

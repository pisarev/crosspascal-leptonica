# Known limitations

LeptonicaHello was verified on Windows x64 with Delphi 13.2 and Lazarus 4.8 with FPC 3.2.2. The check covers creating and writing a grayscale PNG. The full set of codecs and image helpers has its own tests and is outside this example's coverage.

The example writes filenames through Leptonica's narrow-character file API. Choose a path representable in your Windows system code page.

See the [build instructions](BUILD.md) and [third-party notices](THIRD-PARTY-NOTICES.md) for native dependencies.

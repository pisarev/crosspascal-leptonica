# Build the Leptonica library

Download the matching `leptonica-windows-x64` source asset from [CrossPascal Releases](https://github.com/pisarev/crosspascal/releases). Extract it and follow its README for the standalone build with a Linux Docker engine. The full SDK also has an [installation script](https://github.com/pisarev/crosspascal/blob/main/docs/WINDOWS-EARLY-ACCESS.md).

The source asset contains the Leptonica 1.87.0 sources, codec sources, toolchain configuration, and original notices. Check the asset from its extracted directory with Python 3.10 or later:

```text
python -B tools/verify-source.py
```

The portable Docker recipe uses the pinned public base image and Ubuntu package inputs. The source asset identifies those external inputs by checksum.

Place the resulting `leptonica-1.87.0.dll` in this repository's `bin` directory. Follow [INSTALL.md](INSTALL.md) to build the example with Delphi or Lazarus.

# CrossPascal Leptonica

`crosspascal-leptonica` is the repository for CrossLept, the Object Pascal bindings for Leptonica's C API. This private testing draft contains 29 Pascal units, a Delphi package, test and tool source, and license notices.

The draft is a source subset. It contains no native DLL and no codec fixture data. Runtime use requires a separately obtained, verified Leptonica 1.87.0 Win64 DLL.

## Verify the files

From this repository's root, use Python 3.12 or later:

```powershell
python -B scripts/verify_source.py --index ARCHIVE-MANIFEST.json
```

This checks the current source inventory. Root `.git` metadata is allowed only through its explicit inventory entry. Other extra files cause a failure. Keep build outputs outside the checkout.

## Use and testing scope

Add `pascal/` to your compiler's unit search path. The Delphi package is `packages/delphi/crosspascal_crosslept.dpk`. Read [installation notes](INSTALL.md) before loading a native DLL.

The separate complete package recorded 2,851 passed functional checks and one KNOWN marker for each of Delphi 37 and FPC 3.2.2. The test marked KNOWN was not run. The package also passed 14 codec checks per compiler using its matching DLL and fixtures. These are historical results, not fresh tests of this smaller source subset.

The selected Pascal test files passed formatting and the formatter check. See [testing](TESTING.md), [build prerequisites](BUILD.md), and [known issues](KNOWN-ISSUES.md).

`RELEASE-STATUS.json` preserves the historical Stage10 source candidate status; see the [GitHub release notes](https://github.com/pisarev/crosspascal/releases) for current delivery details and clean-clone check results.

## License

Original project code uses the [MIT license](LICENSE). The bindings include declarations derived from Leptonica headers, and the upstream notices remain included. See [third-party notices](THIRD-PARTY-NOTICES.md) for details about the bindings and native dependency notices.

The older local project page in `docs/index.html` is preserved for reference. This README defines the current distribution.

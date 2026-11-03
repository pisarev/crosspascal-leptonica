# Build prerequisites

The source subset contains 29 Pascal binding units and `packages/delphi/crosspascal_crosslept.dpk`. It omits the native DLL, the external native build context, and six codec fixture files.

The build helpers describe a source-only derivative of a separately pinned native build. The setjmp compatibility header adds a copyright notice and retains its previous 712-byte body exactly. The consumer lock and wrapper pins identify this derived context; the original 147-file input lock, Dockerfile, and compiler launcher retain their accepted bytes. Historical native results belong to the ancestor build, and no DLL has been built or accepted from this derived context. External inputs listed in the locks are still required; this source subset is not a complete native build kit.

`tools/package-archives.py` builds the older complete/source archive pair and requires the verified native DLL. `tools/verify-archive.py` checks those older archive contracts. Neither is the entry point for checking this selected source subset; use `scripts/verify_source.py --index ARCHIVE-MANIFEST.json`.

No native rebuild or fresh full Delphi/FPC suite has been run for this publication copy. The five Pascal test files selected for final preparation passed formatting and the formatter check. Keep compiler output outside the checkout.

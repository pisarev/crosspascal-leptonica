# Testing scope

No fresh full Delphi, FPC, native DLL, or codec suite has been run on this selected source subset. The five Pascal test files selected for final preparation passed formatting and the formatter check.

The separate complete package recorded the following results:

| Check | Result per compiler |
| --- | --- |
| Functional tests | 2,851 passed; one KNOWN marker for a test that was not run |
| Final-DLL codec controls | 14 of 14 passed |
| Compilers | Delphi 37 and FPC 3.2.2 |

These results require the complete matching inputs. The selected source subset omits the DLL and six files under `tests/codec-data/`.

The user-validation wrapper now requires the complete declared smoke or full matrix, nonempty executable and package artifacts, and unambiguous summaries with positive executed coverage. FAIL, ERR, or CRASH counters prevent success. KNOWN and optional SKIP entries remain unexecuted observations and must match the declared profile; an unexplained skip leaves the scope unestablished. The KNOWN message reports a recorded compatibility case without claiming a newly demonstrated library defect.

Eight targeted Python regressions passed on Windows with Python 3.12.10 and optimization enabled. They exercise the real parsers, integrity guards, and orchestration with simulated process results and process dispatch blocked. No compiler, DLL, codec image, or model was executed. The codec input checks remain active with Python `-O`; their pins and expected negative-control exit are unchanged.

Do not import `tests/make-codec-fixtures.py` as a smoke test. Its top-level code reads a fixture and writes derived files. Its required fixture is absent from this subset.

To check the files supplied here, run `python -B scripts/verify_source.py --index ARCHIVE-MANIFEST.json`. This is a source inventory check, not a native functional test.

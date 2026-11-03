# Known issues

The native DLL and six codec fixtures are absent. Fixture-dependent tests and the complete native build require additional matching inputs.

The 29 binding units retain their accepted bytes. Five Pascal test files passed final source preparation and the formatter check. Comment cleanup in selected Python and PowerShell helpers preserved their executable code and data. Later validation-wrapper changes have separate unit coverage described in [testing](TESTING.md).

The historical full suite retained one KNOWN marker for a test that was not run. That marker does not establish a defect in the final DLL. The historical results do not establish fresh functionality for this source subset or general safety on arbitrary hostile images.

The older archive tools support the complete/source archive pair from the native package. Use the new source inventory checker for this selected subset. The older project page is retained as reference material.

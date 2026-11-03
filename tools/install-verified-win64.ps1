param(
  [Parameter(Mandatory)][string]$DllSource,
  [Parameter(Mandatory)][string]$ExpectedSha256,
  [Parameter(Mandatory)][string]$InstallDirectory
)
$ErrorActionPreference='Stop'
$source=(Resolve-Path -LiteralPath $DllSource).Path
if ($ExpectedSha256 -notmatch '^[a-fA-F0-9]{64}$') {throw 'E_SHA_FORMAT'}
$current=(Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash.ToLowerInvariant()
if ($current -ne $ExpectedSha256.ToLowerInvariant()) {throw 'E_DLL_SHA_MISMATCH'}
$f=[System.IO.File]::OpenRead($source)
try {
  $header=New-Object byte[] 64
  if ($f.Read($header,0,64) -ne 64 -or $header[0] -ne 77 -or $header[1] -ne 90) {
    throw 'E_NOT_PE'
  }
  $offset=[BitConverter]::ToInt32($header,60)
  if ($offset -lt 64 -or $offset -ge ($f.Length-6)) {throw 'E_PE_OFFSET'}
  $f.Position=$offset
  $pe=New-Object byte[] 6
  if ($f.Read($pe,0,6) -ne 6 -or
      $pe[0] -ne 80 -or $pe[1] -ne 69 -or
      $pe[2] -ne 0 -or $pe[3] -ne 0 -or
      [BitConverter]::ToUInt16($pe,4) -ne 0x8664) {throw 'E_NOT_WINDOWS_AMD64'}
} finally {$f.Dispose()}
$requested=[System.IO.Path]::GetFullPath($InstallDirectory)
if (Test-Path -LiteralPath $requested) {
  $item=Get-Item -LiteralPath $requested -Force
  if (-not $item.PSIsContainer) {throw 'E_INSTALL_TARGET_NOT_DIRECTORY'}
  if (($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0) {
    throw 'E_INSTALL_TARGET_REPARSE_POINT'
  }
  if (@(Get-ChildItem -LiteralPath $requested -Force).Count -ne 0) {
    throw 'E_INSTALL_TARGET_NOT_EMPTY'
  }
  $out=$item.FullName
} else {
  $out=(New-Item -Path $requested -ItemType Directory -ErrorAction Stop).FullName
}
$destination=Join-Path $out 'leptonica-1.87.0.dll'
if (Test-Path -LiteralPath $destination) {throw 'E_INSTALL_DEST_ALREADY_EXISTS'}
Copy-Item -LiteralPath $source -Destination $destination
$copied=(Get-FileHash -LiteralPath $destination -Algorithm SHA256).Hash.ToLowerInvariant()
if ($copied -ne $current) {throw 'E_COPY_SHA_MISMATCH'}
Write-Output "INSTALLED_DLL=$destination"
Write-Output "INSTALLED_SHA256=$copied"
Write-Output 'This checks the copied binary identity only. Run actual application load and codecs/JPEG tests before release.'

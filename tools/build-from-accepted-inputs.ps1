param(
  [Parameter(Mandatory)][string]$ContextRoot,
  [Parameter(Mandatory)][string]$PythonExe,
  [Parameter(Mandatory)][string]$AuditOutput,
  [ValidateSet('VerifyOnly','ExecuteBuild')][string]$Mode='VerifyOnly',
  [string]$WslExe,
  [string]$WslDistribution,
  [string]$WslContext,
  [string]$DockerExe,
  [string]$OutputTag,
  [switch]$RecordBuildRouteOnly
)
$ErrorActionPreference='Stop'
                                                                         
                                                                           
                                                                             
$py=(Resolve-Path -LiteralPath $PythonExe -ErrorAction Stop).Path
$context=(Resolve-Path -LiteralPath $ContextRoot -ErrorAction Stop).Path
$here=(Resolve-Path -LiteralPath $PSScriptRoot).Path
$adapter=Join-Path $here 'portable_build_adapter.py'
$lock=Join-Path $here 'CONSUMER-INPUT-LOCK.json'
if (-not (Test-Path -LiteralPath $adapter -PathType Leaf) -or
    -not (Test-Path -LiteralPath $lock -PathType Leaf)) {
  throw 'E_CONSUMER_BUNDLE_INCOMPLETE'
}
$expected='67ad043bc84fc85177965db55daa40f67f279c8297b7eea4aa7c610ac1704b2c'
if ((Get-FileHash -Algorithm SHA256 -LiteralPath $lock).Hash.ToLowerInvariant() -ne $expected) {
  throw 'E_CONSUMER_LOCK_SHA'
}
$args=@('-B',$adapter,'--context',$context,'--lock',$lock,
  '--expected-lock-sha',$expected,'--audit-output',$AuditOutput)
if ($Mode -eq 'VerifyOnly') {
  $args+='--verify-only'
} else {
  if (-not ($WslExe -and $WslDistribution -and $DockerExe -and $OutputTag)) {
    throw 'E_EXPLICIT_EXTERNAL_RUNTIME_REQUIRED'
  }
  $args+=@('--execute-build','--wsl-exe',$WslExe,
    '--wsl-distribution',$WslDistribution,
    '--docker-exe',$DockerExe,
    '--output-tag',$OutputTag)
                                                                         
                                                                          
  if ($WslContext) { $args+=@('--wsl-context',$WslContext) }
  if ($RecordBuildRouteOnly) { $args+='--record-build-route-only' }
}
& $py @args
if ($LASTEXITCODE -ne 0) {throw "E_PORTABLE_ADAPTER_FAILED $LASTEXITCODE"}
if ($Mode -eq 'VerifyOnly') {
  Write-Output 'VERIFIED_INPUTS_ONLY: no Docker, WSL, DLL build or release acceptance.'
} else {
  if ($RecordBuildRouteOnly) {
    Write-Output 'ROUTE_VERIFIED_ONLY: Docker not launched; codec testing and acceptance are separate from route verification.'
  } else {
    Write-Output 'Build process exited; native JPEG safety and release gates remain separate.'
  }
}

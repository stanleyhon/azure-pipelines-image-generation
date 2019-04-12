################################################################################
##  File:  Validate-EdgePreview.ps1
##  Team:  Automated Testing
##  Desc:  Validate Edge Preview installation.
################################################################################

$edgePath = Join-Path ${env:programfiles(x86)} "Microsoft\Edge Dev\Application\msedge.exe"
if(Test-Path $edgePath)
{
    exit 0
}
else
{
    Write-Host "Microsoft Edge Preview is not installed."
    exit 1
}

# PowerShell launcher script to run the main setup script from the project root

# Call the setup script in the scripts folder
$scriptPath = Join-Path $PSScriptRoot ".\scripts\setup.ps1"
& $scriptPath
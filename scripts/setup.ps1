# PowerShell script to initialize conda env and set OpenAI API key

# Initialize conda env
$scriptPath = Join-Path $PSScriptRoot "create_conda_env.ps1"
& $scriptPath

# Set OpenAI API key
$scriptPath = Join-Path $PSScriptRoot "set_openai_key.ps1"
& $scriptPath
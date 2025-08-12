# PowerShell script to prompt user for OpenAI API key and update .env file

# Prompt for API key
$OpenAIKey = Read-Host -Prompt "Enter your OpenAI API key"

# Path to .env file
$envFile = Join-Path $PSScriptRoot "..\chatgpt_python\.env"

# Update or add the key in the .env file
if (Test-Path $envFile) {
    (Get-Content $envFile) -replace 'OPENAI_API_KEY=.*', "OPENAI_API_KEY=$OpenAIKey" | Set-Content $envFile
} else {
    "OPENAI_API_KEY=$OpenAIKey" | Set-Content $envFile
}

Write-Host ".env file updated with new API key."

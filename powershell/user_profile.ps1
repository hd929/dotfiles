# Sources file
. $env:USERPROFILE\.config\powershell\user_alias.ps1

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'john.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# $PROMPT = "M365Princess"
# oh-my-posh init pwsh --config "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/$PROMPT.omp.json" | Invoke-Expression

Import-Module -Name git-aliases -DisableNameChecking

# Icon
Import-Module -Name Terminal-Icons

# TAB Autocompletion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# FzF
Import-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Zoxide
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

fnm env --use-on-cd | Out-String | Invoke-Expression

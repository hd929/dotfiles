# Remove alias
Remove-Item alias:nv -Force
Remove-Item alias:ls -Force

# Alias
function Get-ChildItem-Wide {
  Get-ChildItem | Format-Wide
}

New-Alias j z
New-Alias f zi
New-Alias ll Get-ChildItem
New-Alias ls Get-ChildItem-Wide
New-Alias nv nvim
New-Alias nvd neovide
New-Alias lv lvim
New-Alias open ii
New-Alias grep findstr
New-Alias live live-server
New-Alias cl Clear-Host
New-Alias lz lazygit

## Yarn
function Add-YarnPackage { yarn add @Args --emoji }
function Add-YarnPackageDev { yarn add --emoji --dev @Args }
function Add-YarnPackageGlobal { yarn global add --emoji @Args }
function Init-YarnPackage {yarn init --emoji @Args}
function Install-YarnPackage { yarn install --emoji @Args }
function Remove-YarnPackage { yarn remove @Args --emoji }
function Start-YarnPackage {yarn start}

New-Alias y yarn
New-Alias ya Add-YarnPackage
New-Alias yad Add-YarnPackageDev
New-Alias yga Add-YarnPackageGlobal
New-Alias yi Init-YarnPackage
New-Alias yin Install-YarnPackage
New-Alias yrm Remove-YarnPackage
New-Alias yst Start-YarnPackage

function Sync-Workspace {
    robocopy "$HOME\workspace" "Z:\workspace" /MIR /Z /NP /R:2 /W:5 /LOG:"$HOME\sync_workspace.log"
}
Set-Alias syncws Sync-Workspace


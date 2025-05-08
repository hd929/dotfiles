function asAd {
  param (
    [string]$command
  )

  Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command $command" -Verb RunAs -WindowStyle Hidden
}

function link
{
  param (
    [string]$targetPath,
    [string]$linkPath
  )
  asAd("New-Item -ItemType SymbolicLink -Path $linkPath -Target $targetPath")
  Write-Host "Symbolic link created at: $linkPath"
}

mkdir $HOME/Documents/PowerShell
link -targetPath D:/dotfiles/powershell/DefaultEnv.ps1 -linkPath $HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
link -targetPath D:/dotfiles/powershell -linkPath $HOME/.config/powershell
link -targetPath D:/dotfiles/lazygit -linkPath $HOME/.config/lazygit

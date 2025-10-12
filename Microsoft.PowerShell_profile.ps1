# Import starship
Invoke-Expression (&starship init powershell)

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Register-EngineEvent PowerShell.OnIdle -Action {
    Import-Module "$ChocolateyProfile"
  } | Out-Null
}


# enable zoxide
zoxide init powershell | Out-String | Invoke-Expression

# fzf setting
Register-EngineEvent PowerShell.OnIdle -Action {
  $env:FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
  Import-Module PSFzf
  Import-Module PSFzfHistory
  Set-PSReadLineKeyHandler -Chord Ctrl+r -ScriptBlock { 
    Invoke-FzfPsReadlineHandlerHistory
  }
} | Out-Null


# alias
Set-Alias vim nvim

function zf {
  $dir = fd -t d . | fzf
  if ($dir) { z $dir }
}



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

# enable yazi file preview
$env:YAZI_FILE_ONE = "C:\Program Files\Git\usr\bin\file.exe"

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

# change the current working directory when exiting Yazi
function y {
    $tmp = (New-TemporaryFile).FullName
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
    }
    Remove-Item -Path $tmp
}


# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

```
# install powershell 7
https://github.com/PowerShell/PowerShell/releases
choco install eza fzf ripgrep fd bat zoxide awk neovim yazi sed -y
Install-Module -Name PSFzf
Install-Module -Name PSFzfHistory
notepad $PROFILE
```

PROFILE SETTING
```
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\iterm2.omp.json" | Invoke-Expression
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# enable zoxide
zoxide init powershell | Out-String | Invoke-Expression

# fzf setting
$env:FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
Import-Module PSFzf
Import-Module PSFzfHistory
Set-PSReadLineKeyHandler -Chord Ctrl+r -ScriptBlock { 
    Invoke-FzfPsReadlineHandlerHistory
}


# alias
Set-Alias vim nvim

function zf {
    z $(fd -t d . | fzf)
}
```

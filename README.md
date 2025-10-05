# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

```
choco install eza fzf ripgrep fd bat zoxide -y
notepad $PROFILE
```

PROFILE SETTING
```
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme iterm2
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


# alias
Set-Alias vim nvim

function zf {
    z $(fd -t d . | fzf)
}
```

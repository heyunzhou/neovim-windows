# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## clone the repo
```
git clone git@github.com:heyunzhou/neovim-windows.git $env:LOCALAPPDATA\nvim
```


## install powershell 7
```
https://github.com/PowerShell/PowerShell/releases
```

## install choco (https://chocolatey.org/install#individual)
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## instal cli tools
```
choco install starship eza fzf ripgrep fd bat zoxide awk neovim yazi sed lazygit -y
Install-Module -Name PSFzf
Install-Module -Name PSFzfHistory
```
## set pwsh profile
```
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:LOCALAPPDATA\nvim\Microsoft.PowerShell_profile.ps1"
```
# set starship 
```
New-Item -ItemType SymbolicLink -Path "$HOME\.config\starship.toml" -Target "$env:LOCALAPPDATA\nvim\starship.toml"
```






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
choco install starship eza fzf ripgrep fd bat zoxide awk neovim yazi sed lazygit mingw -y
Install-Module -Name PSFzf
Install-Module -Name PSFzfHistory
```
# set treesitter c parser(add to env path)
```
C:\ProgramData\mingw64\mingw64\bin
```

## set pwsh profile
```
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:LOCALAPPDATA\nvim\dotfiles\Microsoft.PowerShell_profile.ps1"
```
# set starship 
```
New-Item -ItemType SymbolicLink -Path "$HOME\.config\starship.toml" -Target "$env:LOCALAPPDATA\nvim\dotfiles\starship.toml"
```
# set yazi
```
ya pkg add 956MB/vscode-dark-plus
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\yazi\config\theme.toml" -Target "$env:LOCALAPPDATA\nvim\dotfiles\yazi\theme.toml"
```
# set vscode
```
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Code\User\keybindings.json" -Target "$env:LOCALAPPDATA\nvim\dotfiles\vscode\keybindings.json"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Code\User\settings.json" -Target "$env:LOCALAPPDATA\nvim\dotfiles\vscode\settings.json"
```
# set intellij
```
New-Item -ItemType SymbolicLink -Path "$HOME\.ideavimrc" -Target "$env:LOCALAPPDATA\nvim\dotfiles\intellij\.ideavimrc"
```

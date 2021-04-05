export EDITOR='nvim'
export TERMINAL='alacritty'; export TERM='alacritty'
export BROWSER='firefox'
export READER='zathura'
export GOPATH=$HOME/go
export BG=$HOME/bg.jpg

export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/.local/bin/:${HOME}/.dotnet/tools"
export DOTNET_ROOT=/opt/dotnet

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

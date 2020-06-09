export EDITOR='vim'
export TERMINAL='alacritty'; export TERM='alacritty'
export BROWSER='firefox-bin'
export READER='zathura'
export GOPATH=$HOME/go
export BG=$HOME/bg.jpg

export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/.local/bin/"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

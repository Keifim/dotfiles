XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

export EDITOR='nvim'
export TERMINAL='st'
export BROWSER='firefox'
export READER='zathura'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

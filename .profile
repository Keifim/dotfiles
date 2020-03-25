XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

alias v="nvim"
alias vim='nvim -d'
alias ovim='\vim'

alias l='ls -la'
alias c='clear'

export EDITOR='nvim'
export TERMINAL='st'
export BROWSER='firefox'
export READER='zathura'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

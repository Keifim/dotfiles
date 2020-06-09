HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=200

bindkey -v
export KEYTIMEOUT=1

autoload -Uz compinit promptinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
promptinit; prompt gentoo
_comp_options+=(globdots)

zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion::complete:*' use-cache 1

autoload -U colors && colors
PS1="%B%{$fg[red]%}%{$fg[yellow]%}%M%{$fg[green]%}@%{$fg[blue]%}%n %{$fg[magenta]%}%~%{$fg[red]%}%{$reset_color%}%b "
RPROMPT="%*"

alias v="nvim"
alias vim='nvim -d'
alias vi='\vim'

alias l='ls -la'
alias c='clear'

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# pywal
(cat ~/.cache/wal/sequences &)

# pywal - dmenu
. "${HOME}/.cache/wal/colors.sh"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
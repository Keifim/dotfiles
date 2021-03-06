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

#openrc-shutdown
alias reboot="openrc-shutdown -r now"
alias halt="openrc-shutdown -H now"
alias shutdown="openrc-shutdown"

alias v="nvim"
alias vim='nvim -d'
alias vi='\vim'

alias l='ls -la'
alias c='clear'

alias s="swallow "

alias t="trash "
alias rm='echo "This is not the command you are looking for."; false'

# binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# pywal
(cat ~/.cache/wal/sequences &)

# pywal - dmenu
. "${HOME}/.cache/wal/colors.sh"

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh

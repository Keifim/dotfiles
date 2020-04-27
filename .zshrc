HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '/home/keifim/.zshrc'

autoload -Uz compinit
compinit

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

alias v="nvim"
alias vim='nvim -d'
alias ovim='\vim'

alias l='ls -la'
alias c='clear'

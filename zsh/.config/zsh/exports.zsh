#!/bin/sh
HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# eval "`pip completion --zsh`"
eval "$(zoxide init zsh)"
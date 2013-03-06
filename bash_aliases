#! ~/.bash_aliases

########################
# Bash related aliases #
########################
if [ -x /usr/bin/dircolors ]; then # Enable color support of ls if exists
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi
alias ll='ls -l'
alias la='ls -A'
alias pa='ps -A'

###############
# Git aliases #
###############
alias ga='git add -A'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gu='git reset HEAD'
alias gdr='git checkout --'

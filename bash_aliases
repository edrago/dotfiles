#! ~/.bash_aliases

#======================#
# Bash related aliases #
#======================#
if [ -x /usr/bin/dircolors ]; then # Enable color support of ls if exists
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi
alias ll='ls -l'
alias la='ls -A'
alias psg='ps -ef | grep'

#=============#
# Git aliases #
#=============#
alias ga='git add'
alias gaa='git add -A'
alias gs='git status'
alias gcm='git commit -m'
alias gb='git branch'
alias gu='git reset HEAD'
alias gdr='git checkout --'

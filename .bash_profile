export PATH="$PATH:./node_modules/.bin"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

LANG=en_US.UTF-8

# alias for reaching /Users/metalcanine/Git folder quickly
export REPOS="/Users/metalcanine/Git"

# common useful aliases
alias ls="ls -GFh"
alias ll="ls -al"
alias grep="grep -n"
alias cscreenlarge="cscreen -x 2560 -y 1600"
alias cscreensmall="cscreen -x 2048 -y 1080"

export PS1="\[\033[38m\]\u @ \h ❤ \[\033[32m\]\w\[\033[31m\]\`parse_git_branch\`\[\033[37m\]$\[\033[00m\] "

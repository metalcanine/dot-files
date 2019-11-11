export PATH="$PATH:./node_modules/.bin"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

LANG=en_US.UTF-8

# common useful aliases
alias ls="ls -GFh --color=auto -I '*ntuser.dat*' -I '*NTUSER.DAT*'"
alias ll="ls -al"
alias grep="grep -n"
alias cscreenlarge="cscreen -x 2560 -y 1600"
alias cscreensmall="cscreen -x 2048 -y 1080"

function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    echo " ${BRANCH} "
  else
    echo ""
  fi
}

export PS1="\[\033[38m\]\u @ \h ❤ \[\033[32m\]\w \[\033[31m\]\`parse_git_branch\` \[\033[37m\]$\[\033[00m\] "
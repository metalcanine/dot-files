export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/usr/local/opt/llvm/bin"
export PATH="$PATH:$HOME/.poetry/env"

export PATH="$PATH:$HOME/Library/Application Support/Code/User/globalStorage/github.vscode-codeql/distribution1/codeql"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export LANG=en_US.UTF-8

export EDITOR='nano'

# common useful aliases
alias ls="ls -GFh"
alias ll="ls -al"
alias grep="grep -n"
alias cscreenlarge="cscreen -x 2560 -y 1600"
alias cscreensmall="cscreen -x 2048 -y 1280"
alias git="git --no-pager"

# add user bin directory to path
export PATH=~/.local/bin:$PATH

# default aws profile
export AWS_DEFAULT_PROFILE=profile

# default editor
export EDITOR=vim

# add color to terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# quick access to projects
alias acme='cd ~'

# show/hide hidden files in finder
alias show-files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide-files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# misc alias to make command commands better
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'
alias ll='ls -FGlAhp'
alias less='less -FSRXc'
alias f='open -a Finder ./' # Opens current directory in MacOS Finder
alias show_options='shopt' # display bash options settings
mcd () { mkdir -p "$1" && cd "$1"; } # Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; } # Moves a file to the MacOS trash

# git autocomplete
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='\[\033[36;40m\]\w\[\033[0;33m\]$(__git_ps1 " [%s]")\[\e[0m\] $ '
export PROMPT_COMMAND='echo -ne "\033]0; ${PWD##*/}\007"'

# google helper functions
google() {
    /usr/bin/open -a "/Applications/Google Chrome.app" "https://www.google.com/search?q=${$1}"
}

# checks a port to see what services are listening
check_port() {
    lsof -n -i:$1 | grep LISTEN
}

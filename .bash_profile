# Get current IP for display in iTerm Shell integrations
curl -s http://ifconfig.co > ~/.myip.txt

#iTerm2 Set up
function iterm2_print_user_vars() {
  iterm2_set_user_var myip $(cat ~/.myip.txt)
}

# history size
export HISTFILESIZE=10000000
export HISTSIZE=10000000

# User Aliases
alias l="ls -GFh -la"
# alias updatedb="sudo /usr/libexec/locate.updatedb"

# User Exports
export PS1="\[\033[00;31m\]\u @ \h\[\033[00m\]:\[\033[00;94m\]\w\[\033[00m\][\$?]\\$\[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# Docker Aliases
alias dpsa="docker ps -a"
alias dstart="docker start"
alias dstop="docker stop"


# Docker functions
dex() {
	docker exec -ti $1 /bin/bash 
}

# Git functions
gpush() {
	git add . && git commit -S -m $1 && git push
}

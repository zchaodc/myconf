# prompt
PS1='\[\e[1;37m\]\u\[\e[0m\]@\[\e[0;31m\]\h\[\e[0m\] [\[\e[0;32m\]\w\[\e[0m\]] \[\e[0;36m\]\$\[\e[0m\] '

# Easiser for navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
# alias d="cd ~/Documents/Dropbox"
# alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"
alias v="vim"
# alias m="mate ."
# alias s="subl ."
# alias o="open"
# alias oo="open ."

# clear
alias clr='clear'

# screen command
alias scr='screen'
alias scrls='screen -ls'
alias scrra='screen -r'
alias scrrd='screen -rd'

# tree
alias tree1='tree -L 1'
alias tree2='tree -L 2'
alias tree3='tree -L 3'

alias tr1='tree -L 1'
alias tr2='tree -L 2'
alias tr3='tree -L 3'

# ctags
alias ctags="/usr/bin/ctags"

# set terminal
tput setf 2

# proxy
export proxy='http://www-proxy.ericsson.se:8080/'
export http_proxy="$proxy"
export https_proxy="$proxy"

# virtualbox
alias sshtest='ssh xchaozh@esekiws6013.rnd.ki.sw.ericsson.se'
alias sshmyd='ssh xchaozh@esekiws5788.rnd.ki.sw.ericsson.se'

#                _                 _   _               _
#               | |               | | | |             | |
# __      _____ | | __ _ _ __   __| | | |__   __ _ ___| |__  _ __ ___
# \ \ /\ / / _ \| |/ _` | '_ \ / _` | | '_ \ / _` / __| '_ \| '__/ __|
#  \ V  V / (_) | | (_| | | | | (_| | | |_) | (_| \__ \ | | | | | (__
#   \_/\_/ \___/|_|\__,_|_| |_|\__,_| |_.__/ \__,_|___/_| |_|_|  \___|
#


#[[ $- == *i* ]] && "$HOME/.local/share/blesh/ble.sh" --noattach
[[ $- != *i* ]] && return
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/ble.sh/out/ble.sh
source ~/.local/share/icons-in-terminal/icons_bash.sh
complete -cf sudo
export HISTCONTROL=ignoredups
export EDITOR=VIM
#export TERM=xterm-256color

# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

run-help() { help "$READLINE_LINE" 2>/dev/null || man "$READLINE_LINE"; }
bind -m vi-insert -x '"\eh": run-help'
bind -m emacs -x     '"\eh": run-help'

 if [[ $- == *i* ]]; then # in interactive session
   set -o vi
 fi


#RANGER_DEVICONS_SEPARATOR " "

#################
# ____  ____  _ #
#|  _ \/ ___|/ |#
#| |_) \___ \| |#
#|  __/ ___) | |#
#|_|   |____/|_|#
#################
# PS1='\e[33m\]\u@\h\W\[\e[m\]\[\e[32m\]\\$\e[m\]'
PS1="\[\e[33m\]\w\[\e[m\]\[\e[33m\]>\[\e[m\] "
# PS1="\[\e[35m\]woland\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]arch\[\e[m\]\[\e[31m\]linux\[\e[m\]\[\e[32m\]~\[\e[m\]\[\e[36m\]\\$\[\e[m\] "
########################
#       _ _            #
#  __ _| (_) __ _ ___  #
# / _` | | |/ _` / __| #
#| (_| | | | (_| \__ \ #
# \__,_|_|_|\__,_|___/ #
########################

#PACMAN ALIASES
alias l='lsd'
#alias ls='ls --color=auto'
alias ins='sudo pacman -S'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Syyu'
alias ss='sudo pacman -Ss'
alias remove='sudo pacman -Rs'
alias pkl='sudo pacman -Qq'
alias upkl='sudo pacman -Qeq'
alias cleanup='sudo pacman -Sc'

#YAY ALIASES
alias upaur='yay -Sua' #Updates AUR Packages 
alias lsupaur='yay -Pu' #Lists Upgradable AUR Packages
alias yayclean='yay -Yc' #Removes Unneeded Dependencies
alias yayrm='yay -Rns' #Removes Program And Dependency
alias yaycach='yay -c' #Removes Yay Cache in Yaybin

#OTHER ALIASES THAT ARE USEFULL
alias gvim='vim'
alias brc='vim .bashrc'
alias yt='youtube-dl -ic'
alias bp='bpytop'
alias hp='htop'
alias nf='neofetch'
alias nfl='neofetch | lolcat'
alias nfc='neofetch | lolcat'
alias ..='cd ..'
alias reload='source ~/.bashrc'
alias merge='xrdb -merge ~/.Xresources'
alias disk='ncdu'
alias yabridge='/home/woland/.local/share/yabridge/yabridgectl'
alias pk='pulseaudio -k'
alias r='ranger'
alias v='vim'
alias nv='nvim'
alias whaterm='ps -p $(ps -p $$ -o ppid=) o args='
alias vf='vifm' 
alias sk='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'


# if [ "$TERM" = xterm-256color ]; then
# fish
# fi
#[[ ${BLE_VERSION-} ]] && ble-attach

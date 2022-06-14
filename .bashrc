
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# n ()
# {
#     # Block nesting of nnn in subshells
#     if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#         echo "nnn is already running"
#         return
#     fi
#
#     # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
#     # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
#     # see. To cd on quit only on ^G, remove the "export" and make sure not to
#     # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
#     #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#
#     # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
#     # stty start undef
#     # stty stop undef
#     # stty lwrap undef
#     # stty lnext undef
#
#     nnn "$@"
#
#     if [ -f "$NNN_TMPFILE" ]; then
#             . "$NNN_TMPFILE"
#             rm -f "$NNN_TMPFILE" > /dev/null
#     fi
# }
#
source ~/.local/share/icons-in-terminal/icons_bash.sh


#RANGER_DEVICONS_SEPARATOR " "

[[ $- != *i* ]] && return
complete -cf sudo
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
#export PATH="/usr/local/opt/ruby/bin:$PATH"
alias sk='screenkey -s small -p top -f hack --bg-color powderblue --vis-shift'
alias vf='vifm' 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


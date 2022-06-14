if status is-interactive
# Commands to run in interactive sessions can go here

source ~/.local/share/icons-in-terminal/icons.fish
set -U fish_greeting " There Is Only Power & Those Who Seek It!
"

########.##..##..######..#####...######..........######...####............####...##..##..##......##..##..........#####....####...##...##..######..#####..
#...##....##..##..##......##..##..##................##....##..............##..##..###.##..##.......####...........##..##..##..##..##...##..##......##..##.
#...##....######..####....#####...####..............##.....####...........##..##..##.###..##........##............#####...##..##..##.#.##..####....#####..
#...##....##..##..##......##..##..##................##........##..........##..##..##..##..##........##............##......##..##..#######..##......##..##.
#...##....##..##..######..##..##..######..........######...####............####...##..##..######....##............##.......####....##.##...######..##..##.

#"🐟🐟🐟🐟"
alias vrc='vim .vimrc'
alias fsc='vim ~/.config/fish/config.fish'
alias vf='~/.config/vifm/scripts/vifmrun'
alias vifm='~/.config/vifm/scripts/vifmrun'
#alias ls='ls --color=auto'
alias ins='sudo pacman -S'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Syyu'
alias ss='sudo pacman -Ss'
alias remove='sudo pacman -Rs'
alias pkl='sudo pacman -Qq'
alias upkl='sudo pacman -Qeq'
alias cleanup='sudo pacman -Sc'
alias chu='checkupdates'
alias chun='checkupdates | wc -l'
alias l='ls'
alias ls='/opt/coreutils/bin/ls'

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
alias sk='screenkey -s small -p top -f hack --bg-color powderblue --vis-shift'
alias skb='screenkey -s small -p bottom -f hack --bg-color powderblue --vis-shift'
alias sc='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'
end
alias xep='Xephyr -br -ac -noreset -screen 800x600 :1'
alias wm='DISPLAY:1'

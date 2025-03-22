# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Vim supremacy
export EDITOR=vim
export VISUAL=vim

# Command specific
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al --color=auto'

# SSH connections
alias telehack="ssh rflash@telehack.com -p 6668"
alias ctrlc="ssh fey@ctrl-c.club"

# Package specific
alias ff="firefox"
alias pp="python3"
alias gpp="g++ -std=c++20"
alias cclip="wl-copy" # Requires extra/wl-clipboard
alias vi='vim' # Requires extra/vim
 alias lstpkgs="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }'"
alias ifconfig="ip addr" # net-tools is depreciated, so an illegal workaround
alias cdtemp='cd $(mktemp -d)'

# Environment variables
PS1='\$ '
HISTTIMEFORMAT="%F %T "
github="https://github.com/syswraith"

# For hassle-free creation of venvs in python
pyvenv(){
    if [[ "$1" == "on" ]]; then
	source ./venv/bin/activate
    elif [[ "$1" == "off" ]]; then
	deactivate
    else
	python3 -m venv venv && source ./venv/bin/activate
    fi
}

# For managing the backlight on my laptop
backlight() {
    if [[ "$1" == "up" ]]; then
	gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Keyboard.StepUp
    elif [[ "$1" == "down" ]]; then
	gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Keyboard.StepDown
    else
	echo "Usage: backlight {up|down}"
    fi
}

alias gittt="git add . && git commit -m \"$(date)\" && git push"

update_packages() { current_path=$(pwd) && cd ~/Important/package_management/dotfiles && ./packages.sh && cd $current_path; } # Requires this directory structure to work
get() { yay -S "$@" && update_packages; }
unget() { yay -R "$@" && update_packages; }

# Created by `pipx` on 2025-02-13 19:06:28
export PATH="$PATH:/home/syswraith/.local/bin"


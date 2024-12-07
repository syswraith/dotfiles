# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command specific
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al --color=auto'

# SSH connections
alias telehack="ssh rflash@telehack.com -p 6668"
alias ctrlc="ssh fey@ctrl-c.club"

# Arch specific
alias ff="firefox"
alias pp="python3"
alias cclip="wl-copy" # Requires extra/wl-clipboard
alias vi='nvim' # Requires extra/nvim
alias vim='nvim'
alias lstpkgs="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }'"
alias ifconfig="ip addr" # net-tools is depreciated, so an illegal workaround
alias ?="ddgr" # extra/ddgr required 
alias pdfpgs="/home/syswraith/Documents/College/pdf-pages.sh"

# Environment variables
VENPATH="./venv/bin/activate" # Path to activate venv in python
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1='[\[\e[92;1m\]\u\[\e[0m\]@\[\e[92;1m\]${PS1_CMD1}\[\e[0m\]|\[\e[92m\]\H\[\e[0m\]]{\[\e[38;5;39;1;2;3m\]\w\[\e[0m\]}\n\$ '

backlight() {
    if [[ "$1" == "up" ]]; then
	gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Keyboard.StepUp
    elif [[ "$1" == "down" ]]; then
	gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Keyboard.StepDown
    else
	echo "Usage: backlight {up|down}"
    fi
}

fortune

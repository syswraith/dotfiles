# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command specific
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al --color=auto'

# SSH connections
alias telehack="ssh username@telehack.com -p 6668"
alias ctrlc="ssh username@ctrl-c.club"

# Arch specific
alias pp="python3"
alias cclip="wl-copy" # Requires extra/wl-clipboard
alias vi='vim' # Requires extra/vim
alias lstpkgs="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }'"
alias ifconfig="ip addr" # net-tools is depreciated, so an illegal workaround

# Environment variables
VENPATH="./venv/bin/activate" # Path to activate venv in python
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1='[\[\e[92;1m\]\u\[\e[0m\]@\[\e[92;1m\]${PS1_CMD1}\[\e[0m\]|\[\e[92m\]\H\[\e[0m\]]{\[\e[38;5;39;1;2;3m\]\w\[\e[0m\]}\n\$ '

# ls differences
alias ls='ls -X  --color=auto'
alias ll='ls -lAhX --group-directories-first'

# grep color
alias grep='grep --color=auto'

#python shorthand
alias py='python'

# to avoid sudo on these commands
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias docker="sudo docker"
alias docker-compose="sudo docker-compose"

# to use tree recklessly
alias tree="tree -L 2"

# to avoid code errors when using wayland
alias code="code 2> /dev/null"

# for the wack config repo thing
alias config='/usr/bin/git --git-dir=/home/ulsin/synced-config/ --work-tree=/home/ulsin'

# for sway
alias sway="sway --unsupported-gpu"

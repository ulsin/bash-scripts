# ls differences
alias ls='ls -X  --color=auto'
alias ll='ls -lAhX --group-directories-first'

# grep color
alias grep='grep --color=auto'

#python shorthand
alias py='python'

alias diff='diff --color=auto'

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
# alias config='/usr/bin/git --git-dir=/home/ulsin/synced-config/ --work-tree=/home/ulsin'
alias config='/usr/bin/git --git-dir=/home/ulsin/.config-git-dir/ --work-tree=/home/ulsin'

# for sway
# this one just broke anything, can't soruce this during start
#alias sway="source /home/ulsin/code/bash-scripts/sway-nvidia.start"

# ciding into a directory and opening code there
cdcode() {
  cd "$@" && code .
}

alias cp="rsync -avzh --progress"

alias cat="bat -p"

alias df="df -h | grep -E 'Filesystem|/home/|/$'"
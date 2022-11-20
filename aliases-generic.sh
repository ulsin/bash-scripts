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
alias config='/usr/bin/git --git-dir=/home/ulsin/synced-config/ --work-tree=/home/ulsin'

# for sway
# this one just broke anything, can't soruce this during start
#alias sway="source /home/ulsin/code/bash-scripts/sway-nvidia.start"

# conda init, allows you to do conda activate
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# ciding into a directory and opening code there
cdcode() {
  cd "$@" && code .
}

# cp() {
#   rsync -ah --progress $1 $2
# }

alias cp="rsync -avzh --progress"

# to get color on man pages
export MANPAGER="less -R --use-color -Dd+r -Du+b"

alias cat="bat -p"
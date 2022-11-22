# to colorize man pages
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# To make less have color output
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
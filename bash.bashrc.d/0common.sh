alias ls="ls --color"

if type journalctl &> /dev/null; then
    alias jc="journalctl"
    alias jce="journalctl --pager-end"

    for level in {0..7}
    do
        alias jce$level="journalctl --pager-end --priority=$level"
    done

    alias sc="systemctl"

    if type mosh &> /dev/null; then
        alias systemd-mosh='mosh --server="systemd-run --user --scope mosh-server"'
    fi
fi

alias u="cd .."
alias uu="cd .. && cd .."

if type tmux &> /dev/null; then
    alias tmux="tmux -2"
fi

if type eatmydata &> /dev/null; then
    alias e="eatmydata"
fi

alias up="sudo ${UNSAFE_IO:+eatmydata} sh -c \"apt update && apt upgrade\""

export OHMYPOSH_THEME=paradox


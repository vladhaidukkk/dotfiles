if status is-interactive
    # Start SSH Agent
    if not pgrep -f ssh-agent >/dev/null
        ssh-agent -c | source
    end

    # Dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # ls -> exa
    alias ls="exa --group-directories-first --icons"
    alias la="exa -a --group-directories-first --icons"
    alias ll="exa -al --group-directories-first --icons"
    alias lt="exa -aT --group-directories-first --icons"

    # rm -> trash
    alias rm="trash"

    # cat -> bat
    alias cat="bat --paging=never"

    # top -> htop
    alias top="htop"

    # Colorize `grep` output
    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias fgrep="fgrep --color=auto"

    # pyenv
    alias pyvers="pyenv install -l | grep -E '^[[:blank:]]*[0-9]'"

    starship init fish | source
end

if status is-interactive
    # Start SSH Agent
    if not pgrep -f ssh-agent >/dev/null
        ssh-agent -c | source
    end

    # Dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # ls -> eza
    alias ls="eza -1 --group-directories-first --icons"
    alias la="eza -1a --group-directories-first --icons"
    alias ll="eza -1al --bytes --no-user --no-time --group-directories-first --icons"
    alias lt="eza -1a --tree --group-directories-first --icons"

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

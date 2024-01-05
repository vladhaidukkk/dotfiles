if status is-login
    # Clean up $HOME directory with XDG Base Directory specification
    # Use `xdg-ninja` utility to make it even better
    set -x XDG_DATA_HOME "$HOME/.local/share"
    set -x XDG_CONFIG_HOME "$HOME/.config"
    set -x XDG_STATE_HOME "$HOME/.local/state"
    set -x XDG_CACHE_HOME "$HOME/.cache"

    set -x PATH /Users/vladhaidukkk/Library/Application\ Support/JetBrains/Toolbox/scripts $PATH
    set -x PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

    # Setup `pyenv`
    set -x PYENV_ROOT $XDG_CONFIG_HOME/pyenv
    set -x PATH $PYENV_ROOT/bin $PATH
    pyenv init - | source

    # Created by `pipx`
    set -x PATH $PATH /Users/vladhaidukkk/.local/bin

    # Misc env vars
    set -x MANPAGER "col -bx | bat -l man -p"
end

if status is-interactive
    # Dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # ls -> exa
    alias ls="exa --group-directories-first"
    alias la="exa -a --group-directories-first"
    alias ll="exa -al --group-directories-first"
    alias lt="exa -aT --group-directories-first"

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

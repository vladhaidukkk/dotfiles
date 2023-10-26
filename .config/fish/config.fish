# Clean up $HOME directory with XDG Base Directory specification
# Use xdg-ninja utility to make it even better
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x XDG_CACHE_HOME "$HOME/.cache"

if status is-interactive
    # Dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # Change ls to exa
    alias ls="exa --group-directories-first"
    alias la="exa -a --group-directories-first"
    alias ll="exa -al --group-directories-first"
    alias lt="exa -aT --group-directories-first"

    # Change rm to trash
    alias rm="trash"

    # Change cat to bat
    alias cat="bat --plain"

    # Change top to htop
    alias top="htop"

    # Colorize grep output
    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias fgrep="fgrep --color=auto"

    # Python
    alias python="python3"
    alias pip="pip3"
end


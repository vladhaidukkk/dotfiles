# Clean up $HOME directory with XDG Base Directory specification
# Use xdg-ninja utility to make it even better
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"

if status is-interactive
    # Dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # Change ls to exa
    alias ls="exa --group-directories-first"
    alias la="exa -a --group-directories-first"
    alias ll="exa -al --group-directories-first"
    alias lt="exa -aT --group-directories-first"

    # Colorize grep output
    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias fgrep="fgrep --color=auto"

    # Python
    alias python="python3"
    alias pip="pip3"
end

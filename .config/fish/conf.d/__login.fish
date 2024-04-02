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

    # Setup `direnv`
    direnv hook fish | source
    set -x DIRENV_LOG_FORMAT ""

    # Setup `zoxide`
    zoxide init fish | source

    # Misc env vars
    set -x MANPAGER "col -bx | bat -l man -p"
end

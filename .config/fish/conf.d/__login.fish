if status is-login
    # Clean up $HOME directory with XDG Base Directory specification
    # Use `xdg-ninja` utility to identify new entities to move
    set -x XDG_DATA_HOME $HOME/.local/share
    set -x XDG_CONFIG_HOME $HOME/.config
    set -x XDG_STATE_HOME $HOME/.local/state
    set -x XDG_CACHE_HOME $HOME/.cache

    set -x DOCKER_CONFIG $XDG_CONFIG_HOME/docker
    set -x IPYTHONDIR $XDG_CONFIG_HOME/ipython
    set -x PYENV_ROOT $XDG_CONFIG_HOME/pyenv

    # Set up homebrew
    set -x PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

    # Set up pyenv
    set -x PATH $PYENV_ROOT/bin $PATH
    pyenv init - fish | source

    # Set up zoxide (replaces cd)
    zoxide init --cmd cd fish | source
end

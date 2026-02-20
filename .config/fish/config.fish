if status is-interactive
    # Start SSH Agent (caches SSH keys to avoid repeated passphrase prompts)
    if not pgrep -f ssh-agent >/dev/null
        ssh-agent -c | source
    end

    # Git for dotfiles management
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

    # rm -> trash
    alias rm="trash"
end

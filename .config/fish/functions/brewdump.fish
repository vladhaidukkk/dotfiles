function brewdump --description "Dump Homebrew Brewfile without taps and VSCode extensions"
    mkdir -p $XDG_CONFIG_HOME/brew
    brew bundle dump --describe --force --no-vscode --file=$XDG_CONFIG_HOME/brew/Brewfile
    sed -i '' '/^tap /d' $XDG_CONFIG_HOME/brew/Brewfile
    echo "Brewfile updated at $XDG_CONFIG_HOME/brew/Brewfile"
end

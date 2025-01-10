PATH=$PATH:/usr/local/bin
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Enable neovim installed from source
export PATH="$PATH:/opt/nvim-linux64/bin"

# Start programs
eval "$(starship init bash)"
eval "$(zoxide init bash)"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Extras
gcm() {
    git commit -m "$*"
}


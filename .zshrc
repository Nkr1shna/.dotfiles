# Source Paths
[[ -f ~/.paths ]] && . ~/.paths
# Zim Config
[[ -f ~/.defaultzim ]] && . ~/.defaultzim

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
source <(ng completion script)

# Aliases (/Zim Alias Overrides)
[[ -f ~/.aliases ]] && . ~/.aliases

# Theming
eval "$(oh-my-posh init zsh --config ~/.nest.omp.json)"

# History Config
[[ -f ~/.zhistconfig ]] && . ~/.zhistconfig
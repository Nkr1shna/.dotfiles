# Source Paths
[[ -f ~/paths.zsh ]] && . ~/paths.zsh
# Pluguns
[[ -f ~/plugins.zsh ]] && . ~/plugins.zsh

# Aliases (/Zim Alias Overrides)
[[ -f ~/aliases.zsh ]] && . ~/aliases.zsh

# Completions
[[ -f ~/zshcompletions.zsh ]] && . ~/zshcompletions.zsh

# Theming
eval "$(oh-my-posh init zsh --config ~/.nest.omp.json)"

# History Config
[[ -f ~/zhistconfig.zsh ]] && . ~/zhistconfig.zsh


[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/nest/.lmstudio/bin"
# End of LM Studio CLI section


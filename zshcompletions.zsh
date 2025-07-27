autoload -Uz compinit && compinit

source <(ng completion script)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
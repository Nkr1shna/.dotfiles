#!/bin/zsh

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

#Plugins
FZF_DEFAULT_OPTS='--border --style full'
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

ZSH_PLUGINS_PATH=$HOME/.zsh_plugins
export NVM_DIR="$HOME/.nvm"

if [[ ! -d $ZSH_PLUGINS_PATH || -d $ZSH_PLUGINS_PATH/completions ]]; then
    mkdir -p $ZSH_PLUGINS_PATH/completions
fi

if [[ ! -d $ZSH_PLUGINS_PATH/zsh-completions ]]; then
    git clone https://github.com/zsh-users/zsh-completions.git $ZSH_PLUGINS_PATH/zsh-completions
fi
fpath=($ZSH_PLUGINS_PATH/zsh-completions/src $fpath)

#fzf-tab
FZF_TAB_SCRIPT_LOCATION=$ZSH_PLUGINS_PATH/fzf-tab/fzf-tab.plugin.zsh
if [[ ! -f $FZF_TAB_SCRIPT_LOCATION ]]; then
    if [[ -d $ZSH_PLUGINS_PATH/fzf-tab ]]; then
        rm -rf $ZSH_PLUGINS_PATH/fzf-tab
    fi
    git clone https://github.com/Aloxaf/fzf-tab $ZSH_PLUGINS_PATH/fzf-tab
fi

source $FZF_TAB_SCRIPT_LOCATION
# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
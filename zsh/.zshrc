# ============================================================================
# OH MY ZSH CONFIGURATION
# ============================================================================

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Custom folder location
ZSH_CUSTOM="/home/abhi9av/.config/zsh/"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Auto-update behavior (uncomment to configure)
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13


# ============================================================================
# ENVIRONMENT VARIABLES
# ============================================================================

# Editor
export EDITOR="nvim"

# PATH configurations
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# eza configuration
export EZA_CONFIG_DIR="$HOME/.config/eza"
unset LS_COLORS
unset EZA_COLORS

# yazi configuration
export YAZI_CONFIG_HOME="$HOME/.config/yazi"

# Uncomment to set language environment
# export LANG=en_US.UTF-8

# Uncomment to modify MANPATH
# export MANPATH="/usr/local/man:$MANPATH"


# ============================================================================
# NEOVIM CONFIGURATION SWITCHER
# ============================================================================

# Quick alias for Lazyvim
alias lazy="NVIM_APPNAME=Lazyvim nvim"

# Function to switch between Neovim configurations
function nvims() {
  items=(" NvChad" "Lazyvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config 💤 >> " --height=~50% --layout=reverse --border --exit-0)
  
  if [[ -z $config ]]; then
    echo "Nothing Selected ☹️"
    return 0
  elif [[ $config == " NvChad" ]]; then
    config=""
  fi
  
  NVIM_APPNAME=$config nvim $@
}

# Ctrl-a key binding to launch nvims
bindkey -s ^a "nvims\n"


# ============================================================================
# EZA ALIASES (ls replacement)
# ============================================================================

# All files with full details
alias la="eza -alh --all --classify=auto --git --show-symlinks --icons=always"

# Simplified list view
alias ls="eza -lh --show-symlinks --icons=always --no-filesize --no-permissions --time-style relative"

# Git-focused view
alias lg="eza -alh --classify=auto --git --git-repos --show-symlinks --icons=always --no-permissions --no-filesize --time-style relative"

# Tree view (simplified)
alias lt="eza -alhT --classify=auto --show-symlinks --icons=always --ignore-glob='.git|.venv' --time-style relative"

# Tree view (directories only)
alias ltd="eza -ahTD --classify=auto --show-symlinks --no-permissions --no-filesize --no-user --icons=always --ignore-glob='.git|.venv' --time-style relative"

# Tree view (full details)
alias lta="eza -alhT --classify=auto --git --git-repos --show-symlinks --icons=always --ignore-glob='.git|.venv' --total-size --time-style relative"

# Tree view (git-focused)
alias ltg="eza -alhT --classify=auto --git --git-repos --show-symlinks --icons=always --ignore-glob='.git|.venv' --no-permissions --no-user --total-size --time-style relative"


# ============================================================================
# SHELL ENHANCEMENTS
# ============================================================================

# Starship prompt
eval "$(starship init zsh)"

# Zoxide (smarter cd)
eval "$(zoxide init zsh)"

# FZF fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Custom environment
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"


# ============================================================================
# ADDITIONAL CONFIGURATION
# ============================================================================

# Oh-my-posh (disabled in favor of starship)
# eval "$(oh-my-posh init zsh --config ~/.poshthemes/nocturnal.omp.json)"

# Preferred editor for SSH sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Custom aliases examples
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# eza theme
export EZA_CONFIG_DIR="$HOME/.config/eza"
unset LS_COLORS
unset EZA_COLORS

# Path win32yank
export PATH="$HOME/.local/bin:$PATH"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="/home/abhipc/.config/zsh/"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting) #zsh-autosuggestion zsh-syntax-highlighting

source $ZSH/oh-my-zsh.sh

# === for neovim config switcher ===
alias lazy="NVIM_APPNAME=LazyVim nvim"

function nvims() {
  items=("default" "LazyVim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config 💤 >> " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z config ]]; then
    echo "Nothing Selected ☹️"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

# ctrl-a key to kickoff start nvims
bindkey -s ^a "nvims\n"

# ======================================
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# [all]
alias la="eza -alh --all --classify=auto --git --show-symlinks --icons=always"

# [simplified]
alias ls="eza -lh --show-symlinks --icons=always --no-filesize --no-permissions --time-style relative"

# [git]
alias lg="eza -alh --classify=auto --git --git-repos --show-symlinks --icons=always --no-permissions --no-filesize --time-style relative"

# [Tree simplified]
alias lt="eza -alhT --classify=auto --show-symlinks --icons=always --time-style relative "

# [Tree Full]
alias lta="eza -alhT --classify=auto --git --git-repos --show-symlinks --icons=always --total-size --time-style relative"

# [git tree]
alias ltg="eza -alhT --classify=auto --git --git-repos --show-symlinks --icons=always --no-permissions --no-user --total-size --time-style relative"


# oh-my-posh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/nocturnal.omp.json)"
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

. "$HOME/.local/bin/env"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

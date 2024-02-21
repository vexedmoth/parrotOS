# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""


plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    web-search
    git
)

# Read and execute oh-my-zsh start script
export ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Read and execute nvm start script to run nvm. 
# source /usr/share/nvm/init-nvm.sh

# Fix JAVA problem
export _JAVA_AWT_WM_NONREPARENTING=1

################################# MY CONFIG ###################################

# Adding script binaries to PATH. All scripts inside $HOME/.local/bin will be added automatically to the PATH.
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# Adding sbin to PATH
if [ -d "/sbin" ] ;
  then PATH="/sbin:$PATH"
fi

# Adding nvim to PATH
if [ -d "/opt/nvim-linux64/bin" ] ;
  then PATH="/opt/nvim-linux64/bin:$PATH"
fi


# Bindkeys and aliases
bindkey '^[s' autosuggest-accept
alias fm='ranger'
alias cat='bat --style=plain --paging=never'

alias ls='exa --color=always --icons --group-directories-first'  
alias la='exa -a --color=always --icons --group-directories-first'   
alias ll='exa -l --color=always --icons --group-directories-first' 
alias lla='exa -la --color=always --icons --group-directories-first' 
alias lt='exa -aT --color=always --icons --group-directories-first'    
alias l.='exa -a | egrep "^\."'


eval "$(starship init zsh)"



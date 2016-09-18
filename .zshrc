# History settings
HISTFILE=~/.history
HISTSIZE=2147483647
SAVEHIST=2147483647

# ZSH options
setopt \
    appendhistory \
    extendedglob \
    notify

# ZSH key bindings style
bindkey -v

# ZSH better up/down arrow search
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

# ZSH compinstall
zstyle :compinstall filename '/home/richard/.zshrc'
autoload -Uz compinit
compinit

# Path to oh-my-zsh installation
export ZSH=/usr/share/oh-my-zsh/
# oh-my-zsh cache
export ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
fi

# antigen dotdir
export ADOTDIR=$HOME/.antigen
if [[ ! -d $ADOTDIR ]]; then
    mkdir $ADOTDIR
fi

# Load antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    archlinux
    cabal
    common-aliases
    dirhistory
    docker
    encode64
    git
    git-extras
    pip
    python
    sudo
    systemd
    vi-mode
EOBUNDLES

# Bullet train theme settings
## Bullet train :: Time
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_CONTEXT_SHOW=true
## Bullet train :: Context
BULLETTRAIN_CONTEXT_DEFAULT_USER='richard'
BULLETTRAIN_IS_SSH_CLIENT=true
## Bullet train :: Go
BULLETTRAIN_GO_SHOW=true
## Bullet train :: Command execution time
BULLETTRAIN_EXEC_TIME_SHOW=true

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='gvim'
fi

# Load FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


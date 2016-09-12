HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory notify
bindkey -v
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

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='gvim'
fi

# Load FZF
export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


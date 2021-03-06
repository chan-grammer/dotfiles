# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git composer zsh-syntax-highlighting extract tmux laravel4)

# {{{ Aliases

alias source_zsh='source ~/.zshrc'
alias edit_zsh='vim ~/.zshrc'

# Globals

alias -g G="| grep"
alias -g Gi="| grep -i"
alias -g L="| less"
alias -g Lmn="| less"

# Suffix Aliases (Just like Open with ...)
alias -s log="less -MN"

# }}}

source $ZSH/oh-my-zsh.sh

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# also source .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Customize to your needs...
PATH=$PATH:/home/chanhxc/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
PATH=$PATH:$HOME/.composer/vendor/bin # Add laravel path
PATH=$PATH:/opt/lampp/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH


export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

export EDITOR='vim'

# HOMESHICK
source $HOME/.homesick/repos/homeshick/homeshick.sh
# homeshick completions
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# NVM
source ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

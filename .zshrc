ZSH_THEME="robbyrussell"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/daisuke/flutter/bin
export PATH=$PATH:/usr/local/opt/postgresql@11/bin
export PATH=$PATH:/usr/local/opt.coreutils/libexec/gnubin
export PATH=$PATH:/usr/local/go/bin

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#export PATH=$HOME/.nodebrew/current/bin:$PATH
source $HOME/.oh-my-zsh/oh-my-zsh.sh

export LANG=ja_JP.UTF-8

autoload -Uz colors
colors

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..

setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt ignore_eof
setopt interactive_comments
setopt auto_cd
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob

setopt PROMPT_SUBST ; PS1='%F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

###################################
# alias
alias vi='vim'
alias sl='ls -GF'
alias ll='ls -la'
alias ls="ls -GF"
alias gls="gls --color"
alias hist="history"
alias g="git"
alias gi="git"
alias cdan="cd ~/Library/Android/sdk/tools"
alias c="cd"
alias sed="gsed"
alias pls="ps aux"
alias sls="du -sh ./*"
alias d='docker'
alias _g_auth="gcloud auth login && gcloud auth application-default login"
alias cdw='cd ~/workspace'

###################################

eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export NVM_DIR="/Users/daisuke/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

function peco-history-selection() {
    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit -u
GIT_PS1_SHOWDIRTYSTATE=true
setopt PROMPT_SUBST
PS1='%F{cyan}%c%f%F{red}$(__git_ps1 "(%s)")%f\$ '
export PATH="$HOME/.cargo/bin:$PATH"

. "$HOME/.local/bin/env"

ZSH_THEME="robbyrussell"


export PATH=/usr/local/bin:/usr/bin:/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/daisuke/flutter/bin
export PATH=$PATH:/usr/local/opt/postgresql@11/bin

#source $ZSH/oh-my-zsh.sh
export LANG=ja_JP.UTF-8

autoload -Uz colors
colors

source ~/.zsh/git-prompt.sh

fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit


GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto


# �䴰
# �䴰��ǽ��ͭ���ˤ���
autoload -Uz compinit
compinit
#�ҥ��ȥ�
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# ����򥤥󥯥��󥿥���ɲ�
setopt inc_append_history
# ���󥯥��󥿥뤫��θ���
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# ls�ο��դ�
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# ñ��ζ��ڤ�ʸ������ꤹ��
autoload -Uz select-word-style
select-word-style default
# �����ǻ��ꤷ��ʸ����ñ����ڤ�Ȥߤʤ����
# / ����ڤ�Ȱ����Τǡ�^W �ǥǥ��쥯�ȥ꣱��ʬ�����Ǥ���
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
# �䴰�Ǿ�ʸ���Ǥ���ʸ���˥ޥå�������
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# ../ �θ�Ϻ�����ǥ��쥯�ȥ���䴰���ʤ�
zstyle ':completion:*' ignore-parents parent pwd ..

# ���ץ����
# ���ܸ�ե�����̾��ɽ����ǽ�ˤ���
setopt print_eight_bit
# beep ��̵���ˤ���
setopt no_beep
# �ե�����ȥ����̵���ˤ���
setopt no_flow_control
# Ctrl+D��zsh��λ���ʤ�
setopt ignore_eof
# '#' �ʹߤ򥳥��ȤȤ��ư���
setopt interactive_comments
# �ǥ��쥯�ȥ�̾������cd����
setopt auto_cd
# Ʊ���˵�ư����zsh�δ֤ǥҥ��ȥ��ͭ����
setopt share_history
# Ʊ�����ޥ�ɤ�ҥ��ȥ�˻Ĥ��ʤ�
setopt hist_ignore_all_dups
# ���ڡ�������Ϥޤ륳�ޥ�ɹԤϥҥ��ȥ�˻Ĥ��ʤ�
setopt hist_ignore_space
# �ҥ��ȥ����¸����Ȥ���;ʬ�ʥ��ڡ�����������
setopt hist_reduce_blanks
# �ⵡǽ�ʥ磻��ɥ�����Ÿ������Ѥ���
setopt extended_glob

#PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
#%# "
#setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
#\$ '
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
###################################

eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export NVM_DIR="/Users/daisuke/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

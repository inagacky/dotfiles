=======
# Application Shortcuts
alias cot='open -g -a CotEditor' # ターミナルからCotEditorを開く
alias coda='open -g -a Coda' # ターミナルからCodaを開く
alias safari='open -g -a safari' # ターミナルからSafariを開く
alias console='open -a console' # ターミナルからコンソールを開く

# for shortcut
alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias ll='ls -la'
alias ls='ls -GwF'
alias la='ls -alh'
alias t='tar zxvf'
alias t-='tar xvf -'
alias b='bzip2 -dc'
alias dh='df -h'
alias vi='vim'
alias sr='screen -d -R'
alias grep='grep --exclude=*.svn*'
alias greprn='grep -rn --exclude=*.svn*'
alias bye='sudo shutdown -h now'

# for svn
alias st='svn st'
alias stu='svn st -u'
alias sd='svn di'
alias sdi='svn di'
alias sad='svn add'
alias sup='svn up'
alias sci='svn ci'
alias scim='svn ci -m'

# for git
alias gst='git status'
alias gci='git commit'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gad='git add'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

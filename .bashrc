##BASH##
alias brc='vi ~/.bashrc;'
alias bp='vi ~/.bash_profile;'
alias lls='ls -la'

##GO##
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

##GIT##
function git_stash_pop_index {
    git stash pop --index "stash@{$1}";
}
function gr {
    git reset $1;
}

alias gs='git status'
alias gstashpi=git_stash_pop_index

alias gd='git diff'
alias gdh='gd HEAD~'
alias gtags='git describe --tags'

alias gc='git commit'
alias gcm='gc -m'
alias gca='gc --amend;'
alias gpr='git pull --rebase'
alias gstash='git stash'
alias gstasha='gstash apply;'
alias gstashl='gstash list;'
alias gstashp='gstash pop;'
alias gstashs='gstash save'

alias ga='git add .;'
alias gcu='git reset --soft HEAD~1;'
alias gclear='git checkout -- .'
alias grbc='git rebase --continue;'
alias gsh='git show;'
alias gustg='git reset HEAD;'

alias gl='git log;'
alias gla="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short --branches"

##PIP##
alias pipi='pip install'

##BASH GIT PROMPT##
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="$(brew --prefix)/opt/bash-git-prompt/share"
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

##GIT AUTOCOMPLETE##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$PATH"

##SHELL##
alias zrc='vi ~/.zshrc;'
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

##COMPLETION##
autoload -Uz compinit && compinit

##GIT PROMPT##
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f %F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f %# '

##PYTHON##
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

##NODE##
export PATH="/usr/local/opt/node@22/bin:$PATH"

##CARGO##
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

export PATH="$HOME/.local/bin:$PATH"

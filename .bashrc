
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# gitprompt configuration
# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

source ~/.gitcompletion

alias g="git status"
alias l="ls -a"
alias s="ruby ~/rails_servers/rails_servers.rb"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

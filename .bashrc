### Aliases
alias lls='ls -la'
alias purgeallbuilds='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias gs="git status"
alias s="ruby ~/rails_servers/rails_servers.rb"

### Added for bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

### Added for git autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

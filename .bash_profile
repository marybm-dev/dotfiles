### aliases
alias lls='ls -la'
alias purgeallbuilds='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

### Added for bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

### Added for git autocomplete
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

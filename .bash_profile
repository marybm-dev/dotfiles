# source bashrc so I only have to maintain one file
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

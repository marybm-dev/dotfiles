# Source bashrc so I only have to maintain one file
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[ -f ~/.profile ] && source ~/.profile

# Python
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Node
export PATH="/usr/local/opt/node@22/bin:$PATH"

# Cargo
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# .bash_profile

# Get the aliases and functions
# nvm
if [[ -s $HOME/.nvm/nvm.sh ]];
 then source $HOME/.nvm/nvm.sh
fi

# User specific environment and startup programs

# PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin

export PATH
if [[ -f $HOME/.zshrc ]];
  then source $HOME/.zshrc
fi

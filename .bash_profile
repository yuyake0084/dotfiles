# .bash_profile

# Get the aliases and functions
# nvm
if [[ -s ~/.nvm/nvm.sh ]];
 then source ~/.nvm/nvm.sh
fi

# User specific environment and startup programs

# PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin

export PATH
if [[ -f ~/.bashrc ]];
  then . ~/.bashrc
fi

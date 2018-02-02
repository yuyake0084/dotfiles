# .bash_profile

# Get the aliases and functions
# nvm
if [[ -s $HOME/.nvm/nvm.sh ]];
 then source $HOME/.nvm/nvm.sh
fi

if [[ ! -e $HOME/.vim/dein/repos/github.com/Shougo/dein.vim ]]; then
  mkdir -p $HOME/.vim/dein/repos/github.com/Shougo/dein.vim
  git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
  vi
fi

# User specific environment and startup programs

# PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin

export PATH
if [[ -f $HOME/.bashrc ]];
  then . $HOME/.bashrc
fi

# カラーの設定
# PS1='\[\e[1;36m\][\u@\h] \$ '

# Source global definitions
if [ -f /etc/bashrc ]; then
   /etc/bashrc
fi

# 現在のブランチをプロンプト上に表示
if [ -f ~/dotfiles/.git-completion.bash ]; then
    . ~/dotfiles/.git-completion.bash
fi

if [ -f ~/dotfiles/.git-prompt.sh ]; then
  # リポジトリの状態によって表示が変わる設定を有効にする
  GIT_PS1_SHOWDIRTYSTATE=1
  . ~/dotfiles/.git-prompt.sh
  PS1='\[\e[36m\][\u@\h \W$(__git_ps1 \[\e[35m\]\]"(%s)")\[\e[36m\]]\[\e[37m\] \$ \[\e[31m\]\]'
fi

alias vi='vim'
alias log="git log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

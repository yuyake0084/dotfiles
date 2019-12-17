# カラーの設定
# PS1='\[\e[1;36m\][\u@\h] \$ '

# brewでインストールしたアプリケーションを/Applicationsに保存するようにする
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Source global definitions
# if [ -f /etc/bashrc ]; then
#   /etc/bashrc
# fi

# 現在のブランチをプロンプト上に表示
if [ -f ~/dotfiles/.git-completion.bash ]; then
    . $HOME/dotfiles/.git-completion.bash
fi

# ポケモン
if [[ `uname` -eq "Darwin" ]]; then
  . $HOME/dotfiles/.pokemon.sh
fi

if [ -f ~/dotfiles/.git-prompt.sh ]; then
  # リポジトリの状態によって表示が変わる設定を有効にする
  GIT_PS1_SHOWDIRTYSTATE=1
  . $HOME/dotfiles/.git-prompt.sh
  PS1='\[\033[36m\]\u: \W$(__git_ps1 \[\e[35m\]\]"(%s)")\n\[\e[36m\]\[\e[37m\]\[\033[1;36m\](´・ω ・｀) \[\e[0m\] { \[\e[92m\]\]'
fi

cd_ls () {
  \cd "$@" && ls -al
}

alias vi='vim'
alias cd='cd_ls'
alias log="git log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f $HOME/Desktop/app/ganache/node_modules/tabtab/.completions/electron-forge.bash ] && . $HOME/Desktop/app/ganache/node_modules/tabtab/.completions/electron-forge.bash

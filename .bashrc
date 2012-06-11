# MacPorts Installer addition on 2011-05-03_at_12:03:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export MANPATH=/opt/local/man:$MANPATH
export CATALINAHOME=/opt/local/share/java/tomcat6
export APPLICATIONS=/Applications
export ECLIPSEHOME=$APPLICATIONS/eclipse
export WORKSPACE_FOR_RUBY=~/Documents/rubyworkspace
export WORKSPACE_FOR_JAVA=~/Documents/workspace
export WORKSPACE_FOR_XCODE=~/Documents/xcodeworkspace
export MACPORT_INSTALL_DIR=/opt/local/bin

export LSCOLORS=gxfxcxdxbxegedabagacad
# RSense(rubyの高精度コード補完)
export RSENSE_HOME=~/opt/rsense-0.3

export HISTCONTROL=ignoreboth
# android sdk
export PATH=$PATH:/Applications/android-sdk-macosx/tools

PS1='\[\033[36m\][\u@\h:\[\033[33m\]\w\[\033[36m\]]\[\033[0m\] \$ '

alias ls='ls -Gh'
alias ll='ls -l'
alias la='ls -a'
alias emacs='emacs -nw'
alias less='less -M'


# macVimの設定
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'
alias gvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g "$@"'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

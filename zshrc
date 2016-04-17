export PATH=/usr/local/bin:/usr/local/cuda/bin:/opt/local/bin:/opt/local/sbin:/Applications/Vagrant/bin:/usr/texbin:$PATH
export CUDA_PATH=/usr/local/cuda/include
export CUDA_DIR=/usr/local/cuda
export MANPATH=/opt/local/man:$MANPATH
export CbC_Clang=/Users/e105744/Desktop/CbC_llvm/Release+Asserts/bin
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/JDK\ 1.7.0\ Developer\ Preview.jdk/Contents/Home
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JPF_HOME=/Users/e105744/Desktop/jpf/jpf-core
export LD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib
export PATH=$HOME/.rbenv/bin:$PATH

export LDAP_HOST=192.168.99.100
export LDAP_MANAGER_PASSWORD=horizen-of-akatsuki
export DB_HOST=192.168.99.100
export DB_USER_NAME=hibiki
export DB_USER_PASSWORD=sixth-destroyer-squadron
export EDY_DEVICE_PASS=0tyzk2pflDoeIso
eval "$(rbenv init - zsh)"

autoload -U compinit
compinit

bindkey -e

export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

local GREEN=$'%{\e[1;32m%}'
local PINK=$'%{\e[1;35m%}'
local DEFAULT=$'%{\e[1;m%}'

PROMPT="$GREEN%n @ %m$DEFAULT %% "
RPROMPT="[$PINK%~$DEFAULT]"
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=2000000
SAVEHIST=2000000
setopt hist_ignore_all_dups
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

export LISTMAX=100000
setopt list_packed

setopt nolistbeep
setopt no_beep

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

alias vi="vim"
alias jc="javac -J-Dfile.encoding=UTF8"
alias ja="java -Dfile.encoding=UTF8"
alias mypc="ssh e105744@126.125.160.74"
alias emacs22="/usr/bin/emacs"
case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -G -w"
    ;;
linux*)
    alias ls="ls --color"
    ;;
esac

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
if [[  -s "$HOME/.rvm/scripts/rvm" ]]; then
	source "$HOME/.rvm/scripts/rvm";
fi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/e105744/Desktop/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/e105744/Desktop/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

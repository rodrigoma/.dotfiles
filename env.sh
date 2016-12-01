#!/bin/zsh

#
# Exports
#

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/sbin:$PATH"
export EDITOR='subl -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Owner
export USER_NAME="Rodrigo Monteiro"

#ZSH completion
#fpath=(~/.zprezto/modules/completion/external/src $fpath)

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# GOLANG
export GOPATH=$HOME/golang

#Ruby
eval "$(rbenv init -)"

# Enabling CTRL+LEFT and CTRL+RIGHT to skip words
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

#
# Outros
#

# Load RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source /usr/local/share/zsh/site-functions/_aws

#
# Functions
#

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

#list content tar
function tarlist() { tar -ztvf "$@"; }

#
# Aliases
#

# Use sublimetext for editing config files
alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/.dotfiles/env.sh"

# Alias Java
alias gjava='git ls-files -co --exclude-standard | grep '\.java$' | xargs git add'

# Alias SSH
alias kimble='ssh -i ~/Dropbox/AWS/kimble.pem ec2-user@ec2-52-32-141-213.us-west-2.compute.amazonaws.com'
alias dominic='ssh -i ~/Dropbox/AWS/kimble.pem ec2-user@ec2-52-33-162-126.us-west-2.compute.amazonaws.com'
alias jaiminho='ssh -i ~/Dropbox/AWS/kimble.pem ec2-user@ec2-52-27-64-34.us-west-2.compute.amazonaws.com'

# Alias mysqlcli docker
#alias mysqlcli='docker run -it --rm --name mysqlterm --link mysql --rm mysql:5.7 sh -c \'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"\''

#Alias moip
source /Users/rodrigo.amaral/.aliases


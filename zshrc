alias j6='export JAVA_HOME=`/usr/libexec/java_home -v 1.6`'
alias j7='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'
alias dock1='DOCKER_HOST=localhost:6001 docker'
alias dock2='DOCKER_HOST=localhost:6002 docker'
alias dock11='DOCKER_HOST=localhost:6011 docker'
alias dock12='DOCKER_HOST=localhost:6012 docker'
alias dock13='DOCKER_HOST=localhost:6013 docker'
alias dock14='DOCKER_HOST=localhost:6014 docker'
alias dock15='DOCKER_HOST=localhost:6015 docker'
alias dock16='DOCKER_HOST=localhost:6016 docker'
alias dock17='DOCKER_HOST=localhost:6017 docker'
alias dock18='DOCKER_HOST=localhost:6018 docker'
alias dock19='DOCKER_HOST=localhost:6019 docker'

alias cdu='cd-gitroot'
alias emacs="emacs -nw"

export GROOVY_HOME=/usr/local/opt/groovy/libexec

export PATH=/usr/local/opt/node@6/bin:/usr/local/sbin:$PATH

#unsetopt share_history
#setopt no_share_history

setopt share_history

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history



HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

fpath=( ~/.zfuncs "${fpath[@]}" )

autoload -Uz outOfDate

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /Users/skellner/ThirdParty/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle mollifier/cd-gitroot
antigen bundle peterhurford/git-aliases.zsh

antigen bundle ant
antigen bundle brew
antigen bundle brew-cask
antigen bundle common-aliases
antigen bundle docker
antigen bundle gradle
antigen bundle mvn
antigen bundle node
antigen bundle osx
antigen bundle perl
antigen bundle rimraf/k
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-completions src

antigen theme robbyrussell

bindkey '^[[A' up-line-or-local-history    # Cursor up
bindkey '^[[B' down-line-or-local-history   # Cursor down

antigen apply
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ENV_LEVEL=DEV


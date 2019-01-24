# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="babun"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export PS1='%{$fg[blue]%}{ %~ } %{$fg[green]%}$(  git rev-parse --abbrev-ref HEAD 2> /dev/null || echo ""  )%{$reset_color%} %{$fg[red]%}
%(!.#.$)%{$reset_color%} '
export RPROMPT=''

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cp='cp -i'
alias mv='mv -i'
alias xd='od -A x -t x1z -v'

alias www='cd /c/xampp/htdocs'
alias old='cd /c/xampp/htdocs/bteold'
alias new='cd /c/xampp/htdocs/btenew'
alias bte='cd /c/xampp/htdocs/btenew'
alias mws='cd /c/xampp/htdocs/mwsapi'
alias aws='/c/Program\ Files/Amazon/AWSCLI/aws.exe'
alias dl='cd /e/Download'
alias doc='cd /c/Users/BTE/Docs'
alias lhs='cd /e/LHS'
#lias vue='cd ~/vue'
alias ess='cd ~/es6'
alias msys='cd /c/msys64/home/BTE/'
alias abrt='cd ~/abrt'
alias devgo='cd /c/GoCode/src/github.com/hongshuan/dive-into-go/'
#lias ff='find . -type f | vi -'
#lias f='find . -type f | grep'
alias phpini='vi -p /etc/php5/php.ini /etc/php5/conf.d/*'
alias zshrc='vi ~/.zshrc'
alias bashrc='vi ~/.bashrc'
alias vimrc='vi ~/.vimrc'
alias todo='vi ./TODO'
alias repo='cd /e/LHS/Repo'
alias ptags='ctags -R --languages=php'
alias phpunit='php c:/xampp/htdocs/btenew/bin/phpunit.phar --colors=always'
#lias phplint='bin/phplint'
alias phplint='git diff HEAD --name-only | grep php$ | xargs -n1 -P8 php -l -n'
alias php64='c:/xampp/php64/php.exe'
alias mysql='mysql -u root -h 127.0.0.1'
alias py3='/c/Python/Python36/python -i'
alias phalcon='php vendor/phalcon/devtools/phalcon.php'
alias gsv="git st | vi -"
alias gmf="git mf | vi -"
alias ggg="git add . && git cc && git push"

alias mkmod='php bin/scripts/mkmodel.php'
alias mkent='php bin/mkent.php'
alias mignew='bin/mig'
alias migrun='sql/mig'

alias clear='printf "\033c"'
alias chrome="'/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'"

alias alog='vi vendor/cpigroup/php-amazon-mws/log.txt'
alias zlog='vi app/logs/zzz.log'

alias acclog='vi /c/xampp/apache/logs/btenew-access.log'
alias errlog='vi /c/xampp/apache/logs/btenew-error.log'

alias goodgo='cd /e/LHS/Repo/golang/Good-Go/'
alias tn='cd /c/GoCode/src/TNABK/'

function f {
  if test -z "$1"
  then
    find . -type f
    return
  fi
  
  find . -type f | grep -i $@
}

function ff {
  if test -z "$1"
  then
    #find . -type f | vi -
    find . -type f -not -name "*.gif" -not -name "*.jpg" -not -name "*.jpeg" -not -name "*.png"\
      -o -type d \( -name .git\
      -o -name vendor \) -prune | vi -
    return
  fi

  #find . -type f | grep -i $@ | vi -
  find . -type f -not -name "*.gif" -not -name "*.jpg" -not -name "*.jpeg" -not -name "*.png"\
    -o -type d \( -name .git\
    -o -name vendor \) -prune | grep -i $@ | vi -
}

function gopath {
  CURDIR=`pwd`
  export GOPATH="$(cygpath -am $CURDIR)"
}

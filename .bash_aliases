# My bash aliases

# Backup PATH variable
if [ -z "$PATH0" ]; then
  export PATH0=$PATH
fi

# Load environment variables
if [ -f ~/.bash_env ]; then
  . ~/.bash_env
fi

# Load color scheme used to display terminal output
if [ -f ~/.local/share/lscolors.sh ]; then
   . ~/.local/share/lscolors.sh
fi

# Load functions
if [ -f ~/.bash_fn ]; then
  . ~/.bash_fn
fi

# Start SSH Agent
# if [ -f ~/.bash_ssh ]; then
#  . ~/.bash_ssh
# fi

# if [ -f ~/git-prompt.sh ]; then
#  source ~/git-prompt.sh
# fi

# if [ -f ~/.dircolor ]; then
#  . ~/.dircolor
# else
#  echo "no discolor found"
# fi

# Bash history customization
HISTCONTROL=ignorespace:ingoredups:erasedups
HISTFILESIZE=10
HISTIGNORE=clear:cls:ls:pwd:history*:apropos*:whoami:which*:whatis*:man:"man *":cat:s:p:j:j8:j11:j12:j13:gj:mysource:"mysource *":source:"source *":"./.*":rm:"rm *":mkdir:"mkdir *":tree:"tree *":cd:cdw*:"..*":d:exit:!:cd:make:"make *"

# Aliases
alias mysource='source ~/.bashrc'
alias s='mysource'
alias eba='$EDITOR ~/.bash_aliases'
alias p='echo $PATH'
alias d='ls -lgo | grep -E ^d'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --group-directories-first --color'
alias md='mkdir -p'
alias emacs='emacs -nw'
alias clear='clear -x'
alias clearf='clear'
alias htop='htop -t'
alias man='pinfo -m'
alias wdir='cd /mnt/c/Users/harri'
alias pdir='cd /mnt/d/dev/projects'
alias run='make run'
alias python='python3'

WIN_HOME="/mnt/c"
alias cdwh='cd $WIN_HOME'
alias cdwu='cd $WIN_HOME/Users/harri'
alias cdwd='cd $WIN_HOME/Users/harri/Desktop'
alias cdev='cd /mnt/d/Dev'

# Git aliases
alias gtl='git log --oneline -10'
alias gtla='git log -5'
alias gts='git status'
alias gtr='git rebase'
alias gtrc='git rebase --continue'
alias gtra='git rebase --abort'
alias gtrs='git rebase --skip'
alias gtc='git commit'
alias gtst='git switch'

# Java alias
alias j='java -version'

# set command prompt
PROMPT_COMMAND=ps2

CC="clang"
CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
LDLIBS="-lcrypt -lcs50 -lm"


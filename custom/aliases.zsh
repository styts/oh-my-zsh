alias b='pbcopy'
alias c=clear
alias cdp='cdproject'
alias df='df -h'
alias ds='ds -sh'
alias du='du -h'
alias f='ffind'
alias fab='nocorrect fab'
alias ffind='nocorrect ffind'
alias ff='ffind'
alias g='grep'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gcv='git commit -v'
alias gba='git branch -a'
alias h='history'
alias hpg='history | egrep'
alias hpt='history | tail'
alias ip='ipython'
alias ipn="ipython notebook --pprint --pylab inline"
alias ks=ls
alias ls='ls -G --color'
alias la='ls -la'
alias ll='ls -lG'
alias lls='ls'
alias mkae='make'
alias mdkir='mkdir'
alias o='open'
alias oepn='open'
alias r='ranger'
alias p='python'
alias pyclean='find . -name "*.pyc" -delete ; find . -name __pycache__ -exec rm -rf {} \; '
alias pyhton='python'
alias s='sag'
alias sl=ls
alias sz='source ~/.zshrc && cd $PWD'
alias t=`which todo.sh` -d ~/.todo.cfg
alias v='vim'
alias va='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias vz='vim ~/.zshrc'
alias wo='workon'
alias zs='sz'

# GLOBAL aliases
alias -g G='| egrep'

# git stash list, navigate with `Q`
gstl () {
    git stash list | awk -F: '{
        system("git -c color.ui=always stash show -p " $1); }'
}

# cd to python package source
cdpy () {
  cd "$(python -c "import os.path as _, ${1}; \
          print _.dirname(_.realpath(${1}.__file__[:-1]))"
        )"
}
alias git_undo_merge='git reset --merge ORIG_HEAD'

alias b='pbcopy'
alias c=clear
alias cdp='cdproject'
alias df='df -h'
alias ds='ds -sh'
alias du='du -h'
alias e2='workon exam2 && cd exam2'
alias fab='nocorrect fab'
alias ffind='nocorrect ffind'
alias g='grep'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gcv='git commit -v'
alias gba='git branch -a'
alias h='history'
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
alias v='vim'
alias wo='workon'
alias t=`which todo.sh` -d ~/.todo.cfg

#  this causes strange hang-ups
# git stash list improvement. scroll through stashes with 'q'
#gst() {
    #git stash list | awk -F: '{ print "\n\n\n\n"; print $0; print "\n\n"; system("git stash show -p " $1); }'
#}
cdpy () {
  cd "$(python -c "import os.path as _, ${1}; \
          print _.dirname(_.realpath(${1}.__file__[:-1]))"
        )"
}

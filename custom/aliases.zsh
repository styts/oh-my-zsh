alias -g A='~/.oh-my-zsh/custom/aliases.zsh'
alias b='pbcopy'
alias c=clear
alias cdp='cdproject'
alias d='dirs -v | head -10 | tac'
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
alias hpt='history | tail'
alias -g G=' | grep -i'
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
alias wo='workon'
alias zs='sz'
alias -g Z='~/.zshrc'

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

# history and hpg united
h () {
    if [[ $# -eq 0 ]] ; then
        history
    else
        history | egrep "$@"
    fi
}

# undo GIT merge
undo_merge () {
    git reset --merge ORIG_HEAD
}
alias git_undo_merge=undo_merge

# change profile dynamically
dark () {
    echo -e "\033]50;SetProfile=Dark\a"
    export DARK=1
}

# change profile dynamically
light () {
    echo -e "\033]50;SetProfile=Default\a"
    unset DARK
}

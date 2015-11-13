alias -g A='~/.oh-my-zsh/custom/aliases.zsh'
alias -g B='| pbcopy'
alias -g G='| grep -i'
alias -g GPG='EAE40466'
alias -g H='--help'
alias -g L='| less'
alias -g V='--version'
alias -g Z='~/.zshrc'
alias a="vim ~/.oh-my-zsh/custom/aliases.zsh"
alias b='pbcopy'
alias cdp='cdproject'
alias d='dirs -v | head -10 | tac'
alias df='df -h'
alias ds='ds -sh'
alias du='du -h'
alias f='ffind'
alias fab='nocorrect fab'
alias ffind='nocorrect ffind'

alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -va'
alias gco='git checkout'
alias gcv='git commit -v'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gl='git pull'
alias gp='git push'
alias grv='git remote --verbose'
alias gs='git status'
alias gstp='git stash pop'

alias ipy='ipython'
alias ipn="ipython notebook --pprint --pylab inline"
alias ks='ls'
alias la='ls -la'
alias ll='ls -lG'
alias lls='ls'
alias ls='ls -G --color'
alias mdkir='mkdir'
alias mkae='make'
alias o='open'
alias oepn='open'
alias p='python'
alias pyhton='python'
alias r='ranger'
alias s='sag'
alias sl='ls'
alias t='$(which todo.sh) -d ~/.todo.cfg'
alias v='vim'
#alias vim='nvim'
alias wo='workon'

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
    echo "dark" > ~/.colorscheme
}

# change profile dynamically
light () {
    echo -e "\033]50;SetProfile=Default\a"
    unset DARK
    echo "light" > ~/.colorscheme
}

alias git_undo_merge='git reset --merge ORIG_HEAD'

src () {
    # given a github url "<author>/<package>", clone and cd into ~/src
    args=$@
    name=$(echo $args | cut -d '/' -f 2)  # take the second half of argument
    cd ~/src
    git clone "git@github.com:$args.git"
    cd $name
}

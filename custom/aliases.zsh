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
alias c='clear'
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
alias gci='git checkout integration'
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
alias pst="pbpaste > "
alias pyhton='python'
alias pyhttp='python -m SimpleHTTPServer'
alias r='ranger'
alias re='source ~/.zshrc'
alias s='sag'
alias sl='ls'
alias t='tmux'
alias ta='tmux at'
alias v='nvim'
alias wo='workon'

CALS='--calendar "Work" --calendar "Sport" --calendar "Social Events" --calendar "TODO" --calendar "Personal" --calendar "Birthdays"'
alias week="gcalcli calw $CALS"
alias month="gcalcli calm $CALS"
alias event="gcalcli quick --calendar 'TODO' $@"

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

# history and hpg (history pipe grep) united
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
    echo -e "\033]50;SetProfile=Light\a"
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

# shortcut for the vimwiki with colored tab
wi () {
    tab-color 255 100 200
    cd ~/Personal/vimwiki
    local filename=$1
    if (( $# == 0 )) then
        local filename=~/Personal/vimwiki/index.wiki
    fi
    $EDITOR $filename
}
di (){
    wi ~/Personal/vimwiki/diary/$(date +'%Y-%m-%d').wiki
}

# paste something to the yelster pastebox
ypaste () {
    curl -u kstytsenko:$(pass yelster/ldap) -d private=1 --data-urlencode text@- https://paste2.yelsterdigital.com/api/create
}

colors-tmux () {
    for i in {0..255} ; do
        printf "\x1b[38;5;${i}mcolour${i}\n"
    done
}

# clip last: copy last command to clipboard
cl () {
    last_command=$(history | tail -n 1 | sed 's/[0-9]*  //')
    echo $last_command | pbcopy
    echo "$last_command copied to clipboard"
}

he () {
    # `head` a file
    head !$
}

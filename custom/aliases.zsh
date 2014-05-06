alias b='pbcopy'
alias c=clear
alias cdp='cdproject'
alias df='df -h'
alias ds='ds -sh'
alias du='du -h'
alias e2='workon exam2 && cd exam2'
alias fab='nocorrect fab'
alias ffind='nocorrect ffind'
alias gs='gst'
alias h='history'
alias ip='ipython'
alias ipn="ipython notebook --pprint --pylab inline"
alias ks=ls
alias la='ls -la'
alias ll='ls -lG'
alias ls='ls -G'
alias lls='ls'
alias mkae='make'
alias o='open'
alias oepn='open'
alias p='python'
alias pass='apg -m 20 -x 30 -n 1 | pbcopy'  # random password
alias pyclean='find . -name "*.pyc" -delete ; find . -name __pycache__ -exec rm -rf {} \; '
alias pyhton='python'
alias sl=ls
alias v='vim'
alias vm="cd && cd vmstuff && vagrant up && vagrant ssh"
alias wo='workon'

# functions :) TODO put these in another file later
th() { wn $* -over; }  # thesaurus using WordNet

# pro is my 2013 rMBP

if [[ $HOST =~ "^pro." ]]; then
    alias vm="tab-color 0 200 0; cd; cd vagrant; vagrant up && vagrant ssh"
    alias htop="sudo htop"
    alias vim="nvim"
    alias v="nvim"
fi

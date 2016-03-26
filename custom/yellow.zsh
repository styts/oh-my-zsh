# kspro is the host on my work laptop
if [ "$HOST" = "kspro.local" ]; then
    alias y="mux start yelster"
    alias vm="tab-color 0 150 0; cd ~/vagrant/cms && vagrant up > /dev/null && vagrant ssh"
    alias vmd="tab-color 200 200 255; cd ~/vagrant/docker && vagrant up > /dev/null && vagrant ssh"
    alias vmoerp="tab-color 200 0 100; cd ~/vagrant/openerp && vagrant up > /dev/null && vagrant ssh"

    # branch off from a shared point, making merging with the Spanish team easier
    function qdq_branch () {
        git checkout -b $@ $(git merge-base origin/qdq origin/master)
    }

    # test that the current branch merges safely into origin/qdq
    function qdq_test_branch () {
        git checkout -b tmp origin/qdq
        git merge @{-1} -m "test merge"
        git checkout @{-1}
        git branch -D tmp
    }

    # edit current month's orgmode file
    function org () {
        tab-color 200 100 200
        vim ~/Yelster/work.org/$(date "+%Y-%m").org
    }

    # git branch new
    function gnb () {
        git checkout -b $@ integration
        echo "Created branch $@ based on <integration>"
    }
    alias gbn=gnb

    function migrate_sql () {
        echo "set schema 'pagesjaunes';" | ./manage.py dbshell < $@
    }

    alias -g Y='~/.oh-my-zsh/custom/yellow.zsh'
fi

# kspro is the host of the vagrant vm
if [ "$HOST" = "debian" ]; then
    alias y="mux start yelster"
fi

# kspro is the host on my work laptop

if [ "$HOST" = "kspro.local" ]; then
    alias y="mux start yelster"
    alias vm="tab-color 0 150 0; cd ~/vagrant/cms && vagrant up > /dev/null && vagrant ssh"
    alias vmd="tab-color 200 200 255; cd ~/vagrant/docker && vagrant up > /dev/null && vagrant ssh"
    alias vmoerp="tab-color 200 0 100; cd ~/vagrant/openerp && vagrant up > /dev/null && vagrant ssh"
fi

if [ "$HOST" = "debian" ]; then
    alias y="mux start yelster"
fi

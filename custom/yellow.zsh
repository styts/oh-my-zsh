# kspro is the host on my work laptop

if [ "$HOST" = "kspro.local" ]; then
    alias vm="tab-color 0 150 0; cd ~/vagrant/cms && vagrant up && vagrant ssh"
    alias vmoerp="tab-color 200 0 100; cd ~/vagrant/openerp && vagrant up && vagrant ssh"
fi

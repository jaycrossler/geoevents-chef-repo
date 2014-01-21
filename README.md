Overview
========

This is a set of Chef recipes (think of them as macros to automatically build a running Virtual Machine) that will work to set the
geoevents app up on either a local Virtualbox VM or onto an Amazon Web Service VM.


Configuration
=============

# Download VirtualBox and install it (free at https://www.virtualbox.org/)
# Download Vagrant and install it (free at http://www.vagrantup.com/downloads)
# Download Git and install it (free at http://git-scm.com/downloads or it might be preinstalled if on a mac)
# Download Berkshelf and install it (works best through a gem install:
# If you want to deploy to Amazon or some other provider, create a file named 'vagrant_dev_settings.yml' in the code directory (i.e. ~/Sites) and add in provider deployment details.
# After everything is installed, you can type 'vagrant provision' to have it update code from github and install new libraries, or 'vagrant halt' to stop the VM.

    sudo gem install berkshelf
    sudo vagrant plugin install vagrant-berkshelf
    cd ~/Sites (or wherever you keep your code)
    git clone https://github.com/jaycrossler/geoevents-chef-repo.git
    cd geoevents-chef-repo

    vagrant up (to deploy to a local virtualbox vm)

    (Or, if deploying to amazon)
    vagrant plugin install vagrant-aws
    vagrant plugin install unf
    vagrant up --provider=aws (if using AWS, and the vagrant_dev_settings.yml were created)

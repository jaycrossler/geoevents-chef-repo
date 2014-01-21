Overview
========

This is a set of Chef recipes (think of them as macros to automatically build a running Virtual Machine) that will work to set the
geoevents app up on either a local Virtualbox VM or onto an Amazon Web Service VM.


Configuration
=============

1. Download VirtualBox and install it (free at https://www.virtualbox.org/)
2. Download Vagrant and install it (free at http://www.vagrantup.com/downloads)
3. Download Git and install it (free at http://git-scm.com/downloads or it might be preinstalled if on a mac)
4. Download Berkshelf and install it (works best through a gem install:

    sudo gem install berkshelf
    sudo vagrant plugin install vagrant-berkshelf

5. Open a command line, and 'cd' to or create a directory to keep your source code. I use a directory named Sites for example that's in my home directory (~/Sites)
6. Checkout this chef repo to your local machine:

    git clone https://github.com/jaycrossler/geoevents-chef-repo.git

7. cd geoevents-chef-repo
8. (If you want to deploy to Amazon or some other provider, create a file named 'vagrant_dev_settings.yml' in the code directory (i.e. ~/Sites) and add in provider deployment details.  Run

    vagrant plugin install vagrant-aws
    vagrant plugin install unf

9. Have Vagrant create the VM:

    vagrant up --provider=aws (if using AWS, and the vagrant_dev_settings.yml were created)
    or:
    vagrant up (to deploy to a local virtualbox vm)

10. After it's up and provisioned you should be able to either 'vagrant ssh' to it, or to go to the url in a web browser.
You can type 'vagrant provision' to have it update code from github and install new libraries, or 'vagrant halt' to stop the VM.

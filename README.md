Overview
========

This is a set of Chef recipes (think of them as macros to automatically build a running Virtual Machine) that will work to set the
geoevents app up on either a local Virtualbox VM or onto an Amazon Web Service VM.


Configuration
=============

1. Download VirtualBox and install it (free at https://www.virtualbox.org/)
2. Download Vagrant and install it (free at http://www.vagrantup.com/downloads)
3. Download Git and install it (free at http://git-scm.com/downloads or it might be preinstalled if on a mac)

4. Open a command line, and 'cd' to or create a directory to keep your source code. I use a directory named Sites for example that's in my home directory (~/Sites)
5. Checkout this chef repo to your local machine:
# git clone https://github.com/jaycrossler/procyon-chef-repo.git

6. cd procyon-chef-repo
7. (If you want to deploy to Amazon or some other provider, create a file named 'vagrant_dev_settings.yml' in the code directory (i.e. ~/Sites) and add in provider deployment details.
8. Have Vagrant create the VM:
# vagrant up --provider=aws (if using AWS, and the vagrant_dev_settings.yml were created), or:
# vagrant up (to deploy to a local virtualbox vm)

9. After it's up and provisioned you should be able to either 'vagrant ssh' to it, or to go to the url in a web browser.
You can type 'vagrant provision' to have it update code from github and install new libraries, or 'vagrant halt' to stop the VM.

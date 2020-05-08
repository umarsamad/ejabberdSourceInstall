# ejabberdSourceInstall
Debian Buster Ejabberd Source Based Install Script
This script is made for all of the Debian Buster Users. 
For Stretch change the repositry for APT to Stretch-Backports and you can run it. 
To All of the XMPP Users/Server Admins.
Below are the install Directories:

Optional parameters when starting an ejabberd node:
Config ejabberd:    /etc/ejabberd
Config ejabberd:    /etc/ejabberd/ejabberd.yml
Control Config ejabberdctl: /etc/ejabberd/ejabberdctl.cfg
Directory for logs: /var/log/ejabberd
Database spool dir: /var/lib/ejabberd

What's New:

- Script Checked on Debian Buster with backports and Ejabberd 20.04
- Ejabberd STUN/TURN Support in Ejabberd 20.04 tested working using this script.
- User Prior to Running Scripts can select the Git Repository for the ejabberd version to be installed. Checked and working
- Script also can now Upgrade the Existing Git Based Installation
- Elixier is now supported, however not tested. This is just installation.

Installation Notes:

- In Case of an existing ejabberd installatin , the ejabberd.yml file will be renamed with extension ".bak"
- Post Installation whether "From Scratch New" or Upgrade the "Ejabberd.yml" file part of the installation is renamed to "ejabberd.yml.new". Ensure to rename it back to ejabberd.yml and restart the ejabberd services"

Notes: ejabberd-contrib Modules are not Compiled. For them Seperately Compile them using erlc and copy the beam files to /usr/local/ejabberd/ejabberd-module or what is your setting in ejabberdctl.cfg

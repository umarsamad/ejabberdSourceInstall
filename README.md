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

Script Checked on Debian Buster with backports and Ejabberd 19.09

Please note that Elixier was not included in the Script as part of the Dependency Install.
However if installed the Elixier related Functionality would also be made available.

Notes: ejabberd-contrib Modules are not Compiled. For them Seperately Compile them using erlc and copy the beam files to /usr/local/ejabberd/ejabberd-module or what is your setting in ejabberdctl.cfg

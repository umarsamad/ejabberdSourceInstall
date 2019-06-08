# ejabberdSourceInstall
Debian Stretch Ejabberd Source Based Install Script
This script is made for all of the Debian Stretch Users. 
For Buster change the repositry for APT to Buster and you can run it. 
To All of the XMPP Users/Server Admins.
Below are the install Directories:

Optional parameters when starting an ejabberd node:
Config ejabberd:    /usr/local/etc/ejabberd
Config ejabberd:    /usr/local/etc/ejabberd/ejabberd.yml
Control Config ejabberdctl: /usr/local/etc/ejabberd/ejabberdctl.cfg
Directory for logs: /usr/local/var/log/ejabberd
Database spool dir: /usr/local/var/lib/ejabberd

Script Checked on Debian Stretch with backports and Ejabberd 19.05

Please note that Elixier was not included in the Script as part of the Dependency Install.
However if installed the Elixier related D Functionality would also be made available. 
Notes:ejabberd-contrib Modules are not Compiled. For them Seperately Compile them using erlc and copy the beam files to /usr/local/ejabberd/ebin

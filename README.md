# ejabberdSourceInstall
Debian Stretch Ejabberd Source Based Install Script
This script is made for all of the Debian Stretch Users. <\n>For Buster change the repositry for APT to Buster and you can run it. 
<\n>To All of the XMPP Users/Server Admins.
<\n>Below are the install Directories:

<\n>Optional parameters when starting an ejabberd node:
  <\n>Config ejabberd:    /usr/local/etc/ejabberd
  <\n>Config ejabberd:    /usr/local/etc/ejabberd/ejabberd.yml
  <\n>Control Config ejabberdctl: /usr/local/etc/ejabberd/ejabberdctl.cfg
  <\n>Directory for logs: /usr/local/var/log/ejabberd
  <\n>Database spool dir: /usr/local/var/lib/ejabberd

Script Checked on Debian Stretch with backports and Ejabberd 19.05
Please note that Elixier was not included in the Script as part of the Dependency Install. However if installed the Elixier related D Functionality would also be made available. 

Ejabberd Contrib Modules are not Compiled. For them Seperately Compile them using erlc and copy the beam files to /usr/local/ejabberd/ebin

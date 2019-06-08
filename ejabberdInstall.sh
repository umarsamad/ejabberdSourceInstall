sudo mkdir /var/lib/ejabberd
sudo useradd -b /var/lib -s /bin/sh -r -M ejabberd

sudo apt-get update && sudo apt-get upgrade -y &&sudo apt-get -t stretch-backports upgrade -y
sudo apt-get -t stretch-backports install make autogen autoconf gcc git erlang libexpat1 libexpat1-dev libyaml-0-2 erlang openssl zlib1g zlib1g-dev imagemagick openssl libssl1.0-dev libyaml-dev unzip zip p7zip-full libsqlite3-0 libsqlite3-dev libpam0g libpam0g-dev libpam-modules libpam-modules-bin -y

sudo chown -R ejabberd:ejabberd /var/lib/ejabberd

git clone https://github.com/processone/ejabberd.git
cd ejabberd
./autogen.sh
./configure --enable-user=ejabberd --enable-all
make
sudo make install

### Comment the Non-Relevant Init System command below.  

#SysV init: -- Use below if SysV is the Init System

sudo cp ejabberd.init /etc/init.d/ejabberd
sudo /etc/inid.d/ejabberd start

#systemd: -- Use Below if SystemD is the init system
sudo cp bin/ejabberd.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ejabberd.service
sudo systemctl start ejabberd

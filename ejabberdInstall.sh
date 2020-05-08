rm -rf ejabberd
sudo mv /etc/ejabberd/ejabberd.yml /etc/ejabberd/ejabberd.yml.bak
sudo mkdir /var/lib/ejabberd
sudo useradd -b /var/lib -s /bin/sh -r -M ejabberd

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install elixir

####apt-get -t buster-backports

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get -t buster-backports upgrade -y
sudo apt-get -t buster-backports install make autogen autoconf gcc git erlang libexpat1 libexpat1-dev \
libyaml-0-2 erlang zlib1g zlib1g-dev imagemagick \
openssl libssl1.1 libssl-dev libyaml-dev \
unzip zip p7zip-full libsqlite3-0 libsqlite3-dev \
libpam0g libpam0g-dev libpam-modules libpam-modules-bin -y

sudo chown -R ejabberd:ejabberd /var/lib/ejabberd

###wget https://github.com/processone/ejabberd/archive/20.01.zip
#wget https://github.com/processone/ejabberd/archive/20.02.zip
#unzip 20.02.zip
#mv ejabberd-20.02/ ejabberd
 
git clone https://github.com/processone/ejabberd.git

cd ejabberd
sed -i 's+prefix = @prefix@+prefix =+g' Makefile.in
./autogen.sh
./configure --enable-user=ejabberd --enable-all
make
sudo make install

#SysV init:

sudo mv /etc/ejabberd/ejabberd.yml /etc/ejabberd/ejabberd.yml.new
sudo mv /etc/ejabberd/ejabberd.yml.bak /etc/ejabberd/ejabberd.yml


sudo cp ejabberd.init /etc/init.d/ejabberd
sudo /etc/inid.d/ejabberd start

##systemd:
sudo cp bin/ejabberd.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ejabberd.service
sudo systemctl start ejabberd

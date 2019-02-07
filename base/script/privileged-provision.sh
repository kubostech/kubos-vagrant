#These start an interactive prompt - I can't figure out how to fix it yet...
sudo apt-mark hold grub-common grub-pc grub-pc-bin grub2-common

apt-get update
apt-get install -y software-properties-common

apt-get update

apt-get upgrade -y python2.7 python3.5 ncurses-dev bc
apt-get install -y build-essential libssl-dev libffi-dev libhidapi-hidraw0 gdb
apt-get install -y python-setuptools build-essential ninja-build python-dev libffi-dev libssl-dev
apt-get install -y git
apt-get install -y cmake

apt-get install -y sshpass

#Install kernel additions for better USB device recognition
apt-get install -y linux-image-extra-virtual

#do the pip setup and installation things
easy_install pip
pip install --upgrade pip

# Set up pip for Python3.5
apt-get install -y python3-pip

#sqlite
apt-get install -y sqlite3 libsqlite3-dev

#documentation tools
apt-get install -y doxygen graphviz plantuml
pip install Sphinx==1.5.6
pip install breathe
pip install sphinx-rtd-theme==0.2.4
pip install sphinxcontrib-plantuml
pip install sphinx-jsondomain

#KubOS Linux setup
echo "Installing KubOS Linux Toolchains"

apt-get install -y minicom
apt-get install -y libc6-i386 lib32stdc++6 lib32z1

#Utilities for building KubOS Linux
apt-get install -y unzip mtools

#iOBC Toolchain
wget https://s3.amazonaws.com/kubos-world-readable-assets/iobc_toolchain.tar.gz
tar -xf /home/vagrant/iobc_toolchain.tar.gz -C /usr/bin
rm /home/vagrant/iobc_toolchain.tar.gz
echo "export PATH=$PATH:/usr/bin/iobc_toolchain/usr/bin" >> /etc/profile

#Beaglebone Black/Pumpkin MBM2 toolchain
wget https://s3.amazonaws.com/kubos-world-readable-assets/bbb_toolchain.tar.gz
tar -xf /home/vagrant/bbb_toolchain.tar.gz -C /usr/bin
rm /home/vagrant/bbb_toolchain.tar.gz

mv /home/vagrant/minirc.kubos /etc/minicom/minirc.kubos
mv /home/vagrant/kubos-usb.rules /etc/udev/rules.d/kubos-usb.rules

adduser vagrant dialout

#Vagrant commands may act funny without password-less sudo
echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

echo "Finished root provisioning"

#
# steps to do after first boot of a pi
# to set up stuff we do always
#

cd /boot
sudo apt-get update

# this mess because debian has an ancient unsupported ansible
sudo apt-get install -y python-setuptools python-dev build-essential libssl-dev libffi-dev 
sudo easy_install pip
sudo pip install ansible

sudo cp hosts /tmp
sudo chmod 644 /tmp/hosts
sudo ansible-playbook -i /tmp/hosts pi-initial-setup.yml


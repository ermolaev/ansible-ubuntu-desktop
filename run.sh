# Install required software
sudo apt-get install python-setuptools aptitude git curl python-dev libxml2-dev libxslt-dev build-essential libssl-dev libffi-dev

# Install Python pip
sudo easy_install pip

# Clone the repository
cd ~
git clone https://github.com/ermolaev/ansible-ubuntu-desktop.git ~/ansible-ubuntu-desktop

# Change permissions and owner of the folder
sudo chown -R $USER:$USER ~/ansible-ubuntu-desktop
sudo chmod -x -R ~/ansible-ubuntu-desktop

# Install Ansible requirements
cd ~/ansible-ubuntu-desktop
sudo pip install -r requirements.txt

# Run Ansible...
sudo ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

exit 0

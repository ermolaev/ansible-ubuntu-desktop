sudo apt update &&
  apt install -y software-properties-common &&
  apt-add-repository -y ppa:ansible/ansible &&
  apt update &&
  apt install -y ansible

# Clone the repository
cd ~ && git clone https://github.com/ermolaev/ansible-ubuntu-desktop.git ~/ansible-ubuntu-desktop

# Change permissions and owner of the folder
sudo chown -R $USER:$USER ~/ansible-ubuntu-desktop
sudo chmod -x -R ~/ansible-ubuntu-desktop

# Install Ansible requirements
cd ~/ansible-ubuntu-desktop

# Run Ansible...
sudo ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

exit 0

install: ansible
	ansible-playbook install.yml --ask-become-pass -v

ansible:
	sudo apt update
	sudo apt install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible -y
	sudo apt update
	sudo apt install ansible -y

golang:
	ansible-playbook install.yml --ask-become-pass -v --tags golang

sublime:
	ansible-playbook install.yml --ask-become-pass -v --tags sublime

tools:
	ansible-playbook install.yml --ask-become-pass -v --tags tools

xubuntu:
	ansible-playbook install.yml --ask-become-pass -v --tags xubuntu

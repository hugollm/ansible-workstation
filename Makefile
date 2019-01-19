install: ansible
	ansible-playbook install.yml --ask-become-pass -v

ansible:
	sudo apt update
	sudo apt install software-properties-common -y
	sudo apt-add-repository ppa:ansible/ansible -y
	sudo apt update
	sudo apt install ansible -y

atom:
	ansible-playbook install.yml --ask-become-pass -v --tags atom

chrome:
	ansible-playbook install.yml --ask-become-pass -v --tags chrome

drivers:
	ansible-playbook install.yml --ask-become-pass -v --tags drivers

golang:
	ansible-playbook install.yml --ask-become-pass -v --tags golang

nodejs:
	ansible-playbook install.yml --ask-become-pass -v --tags nodejs

postgresql:
	ansible-playbook install.yml --ask-become-pass -v --tags postgresql

python:
	ansible-playbook install.yml --ask-become-pass -v --tags python

redis:
	ansible-playbook install.yml --ask-become-pass -v --tags redis

slack:
	ansible-playbook install.yml --ask-become-pass -v --tags slack

spotify:
	ansible-playbook install.yml --ask-become-pass -v --tags spotify

sublime:
	ansible-playbook install.yml --ask-become-pass -v --tags sublime

tools:
	ansible-playbook install.yml --ask-become-pass -v --tags tools

xubuntu:
	ansible-playbook install.yml --ask-become-pass -v --tags xubuntu

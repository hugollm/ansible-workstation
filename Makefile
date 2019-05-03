all: ansible install

ansible:
	sudo apt update
	sudo apt install curl -y
	sudo apt install software-properties-common -y
	sudo apt-add-repository ppa:ansible/ansible -y
	sudo apt update
	sudo apt install ansible -y

install:
	ansible-playbook install.yml --ask-become-pass -v

resume:
	ansible-playbook install.yml --ask-become-pass -v --start-at-task "${task}"

atom:
	ansible-playbook install.yml --ask-become-pass -v --tags atom

chrome:
	ansible-playbook install.yml --ask-become-pass -v --tags chrome

docker:
	ansible-playbook install.yml --ask-become-pass -v --tags docker

drivers:
	ansible-playbook install.yml --ask-become-pass -v --tags drivers

git:
	ansible-playbook install.yml --ask-become-pass -v --tags git

golang:
	ansible-playbook install.yml --ask-become-pass -v --tags golang

nodejs:
	ansible-playbook install.yml --ask-become-pass -v --tags nodejs

peek:
	ansible-playbook install.yml --ask-become-pass -v --tags peek

postgresql:
	ansible-playbook install.yml --ask-become-pass -v --tags postgresql

python:
	ansible-playbook install.yml --ask-become-pass -v --tags python

redis:
	ansible-playbook install.yml --ask-become-pass -v --tags redis

redshift:
	ansible-playbook install.yml --ask-become-pass -v --tags redshift

rust:
	ansible-playbook install.yml -v --tags rust

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

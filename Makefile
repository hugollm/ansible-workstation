install:
	ansible-playbook install.yml --ask-become-pass -v

sublime:
	ansible-playbook install.yml --ask-become-pass -v --tags sublime

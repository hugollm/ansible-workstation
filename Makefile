setup:
	ansible-playbook setup.yml --ask-become-pass -v

sublime:
	ansible-playbook setup.yml --ask-become-pass -v --tags sublime

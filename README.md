# Ansible Workstation

My personal roles for fast workstation setup.


## Executing

Clone this repo and cd into it:

    git clone git@github.com:hugollm/ansible-workstation.git
    cd ansible-workstation

To install everything (including ansible):

    make all

To install everything except ansible:

    make install

If you want a specific role, say the name. Ex:

    make redis

If a task on make install failed and you want to resume from there:

    make resume task="name of the task"

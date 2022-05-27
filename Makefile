.PHONY: install execute execute-sudo

default: install execute

install:
	ansible-galaxy install -r requirements.yml

execute: 
	ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER}

execute-sudo: 
	ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER} -b -K


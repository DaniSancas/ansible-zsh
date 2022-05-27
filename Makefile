.PHONY: install execute execute-sudo

default: install execute

install:
	ansible-galaxy install -r requirements.yml

EXECUTION=ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER}
execute: 
	$(EXECUTION)

execute-sudo: 
	$(EXECUTION) -b -K

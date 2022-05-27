.PHONY: exec exec-sudo

default: exec

exec: 
	ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER}

exec-sudo: 
	ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER} -b -K

.PHONY: install exec exec-sudo

default: install exec

install:
        ansible-galaxy install -r requirements.yml

exec: 
        ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER}

exec-sudo: 
        ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER} -b -K


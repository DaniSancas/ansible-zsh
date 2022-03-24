# ansible-zsh
Ansible ZSH recipe for multiple hosts and users.

## Recommended requisites

- Python >=3.8
- [Optional] Vagrant with VirtualBox

## How to start

Clone this repo in a folder of your choice:

```sh
git clone https://github.com/DaniSancas/ansible-zsh.git
# or
git clone git@github.com:DaniSancas/ansible-zsh.git
```

Initialize a pipenv shell and install the requirements:

```sh
pipenv shell
pipenv install
```

Install the Ansible roles used in this repo:

```sh
ansible-galaxy install -r requirements.yml
```

Modify the inventory file at will (it contains my home machines), and run against desired endpoints:

```sh
# Examples:

# Run for all hosts
ansible-playbook main.yml -i inventory

# Run only for server group
ansible-playbook main.yml --limit server -i inventory
```

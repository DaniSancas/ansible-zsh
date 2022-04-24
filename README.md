# ansible-zsh
Ansible ZSH recipe for multiple hosts and users.

## Prerequisites

- Python >=3.8
- Ansible

```sh
sudo apt install python3.8 ansible
```

### Optional prerequisites

- Vagrant with VirtualBox

## How to start

Clone this repo in a folder of your choice:

```sh
git clone https://github.com/DaniSancas/ansible-zsh.git
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

# Run only for a specific group, `laptop` in this case
ansible-playbook main.yml --limit laptop -i inventory
```

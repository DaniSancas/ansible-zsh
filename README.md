# ansible-zsh
Ansible ZSH recipe for localhost current user.

## Prerequisites

- Python >=3.8
- Ansible

```sh
sudo apt install python3.8 ansible
```

### Optional prerequisites
- pipenv

So you can execute:
```sh
pipenv shell
pipenv install
```

## How to start

Clone this repo in a folder of your choice:

```sh
git clone https://github.com/DaniSancas/ansible-zsh.git
```

Install the Ansible roles and execute the recipe with a simple command:

```sh
make
```

In case you want/need it, you can execute step by step:
```sh
# Will run -> ansible-galaxy install -r requirements.yml
make install

# Will run -> ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER}
make execute
```

If `make execute` doesn't work due to admin permissions, you can execute this alternative, which will ask for `sudo` password:
```sh
# Will run -> ansible-playbook main.yml -i inventory --limit local --extra-vars ansible_user=${USER} -b -K
make execute-sudo
```

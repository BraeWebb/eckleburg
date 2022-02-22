![Eckleburg Logo](assets/logo.png)

Eckleburg is a collection of Ansible scripts to oversee my local development machines and ensure the environments of all machines are identical.

The intention is for the scripts to be updated as I need to install or reconfigure software on my machine (avoiding doing it all at once), so currently, these are only a subset of my environment.

To ensure that the machine is in sync, or to put it in sync, run the following:
```
ansible-playbook -K main.yml
```

Where possible brew has been used as Linuxbrew provides a cross-platform option.
The notable exceptions are brew casks which don't work _well_ on linux, I fall back on apt in this case.

## Requirements

* Curl
* Ansible

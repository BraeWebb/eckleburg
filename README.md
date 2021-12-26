![Eckleburg Logo](assets/logo.png)

Eckleburg is a collection of Ansible scripts to oversee my local development machines and ensure the environments of all machines are identical.

The intention is for the scripts to be updated as I need to install or reconfigure software on my machine (avoiding doing it all at once), so currently, these are only a subset of my environment.

To ensure that the machine is in sync, or to put it in sync, run the following:
```
ansible-playbook -K main.yml
```
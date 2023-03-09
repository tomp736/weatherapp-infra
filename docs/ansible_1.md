# Ansible

The ansible project is setup to configure the a docker host, and configure two docker containers (weather app backend and frontend).

## External Dependancies

### devsec.hardening [Link](https://github.com/dev-sec/ansible-collection-hardening)

Applied to docker host to apply known hardening best practices.

Roles Applied

- devsec.hardening.ssh_hardening
- devsec.hardening.os_hardening

## Project Playbooks

Site configuration:

- site.yml : base playbook
    - playbooks/hardening.yml - hardens the host
    - playbooks/docker.yml - configures docker

Weatherapp configuration:

- weatherapp.yml : base playbook
    - playbooks/weatherapp.yml - configures weather app containers


## Project Roles

- roles/docker : configures docker
- roles/weatherapp : configures weatherapp docker containers

## Variables

- weatherapp_appid : weather api key for weatherapp
- weatherapp_version : version of weatherapp to deploy

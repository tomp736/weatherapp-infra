# Weather App Infra

This repository contains source code related to provisioning infrastructure that will provide weather app services.

## Cloud Provider

- [x] Azure

## Tools Used

- [x] Terraform
- [ ] Ansible

## High Level Objectives

### Azure

- [x] Create Azure Account
- [x] Create Azure Application
- [x] Configure Azure Account

### Terraform

- [x] Configure Terraform for Azure (Local development, CI)
- [x] Configure Terraform for remote backend.
- [ ] CI workflows
    - [x] Deploy
    - [x] Destroy
    - [x] Tffmt
- [x] Generate ansible inventory

### Ansible
- [x] Create Ansible project.
- [x] Create Ansible playbook for configuring machine.
    - [ ] Create user for docker
    - [x] Install docker
- [ ] Create Ansible playbook for configuring weatherapp.
    - [ ] Configure docker network(s)
    - [ ] Configure docker container(s)
- [ ] CI workflows
    - [ ] ansible-playbook install

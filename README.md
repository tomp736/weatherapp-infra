# Weather App Infra

This repository contains source code related to provisioning infrastructure that will provide weather app services.

## Cloud Provider

- [x] Azure

## Tools Used

- [x] Terraform
- [x] Ansible

## High Level Objectives

### Azure

- [x] Create Azure Account
- [x] Create Azure Application
- [x] Configure Azure Account

## Local Development

### Terraform

**Create a tfvars file** 

You will need a tfvars file populated with the following variables.

``` tfvars
tenant_id       = <tenantid>
subscription_id = <subscription_id>
client_id       = <client_id>
client_secret   = <client_secret>
deploy_pubkey   = <deploy_pubkey>

prefix   = "weather"
location = "West Europe"
```

**Terraform Apply** 

``` sh
# assumes you current working directory is terraform
terraform apply --var-file=default.tfvars
```

If terraform apply fails, check that you have your ssh-agent running, as the connection used relies on the agent to provide authentication.


Terraform will output a file named `ansible_hosts_site`. This file is the inventory file for ansible.

**Terraform Destroy** 

``` sh
# assumes you current working directory is terraform
terraform destroy --var-file=default.tfvars
```

### Ansible

Two core playbooks exists at the root level under the ansible directory. The `site.yml` playbook handles the base configuration for the machine which includes `harderning` and `docker`. The `weatherapp.yml` playbook configures the weatherapp docker containers.

To apply ansible configuration, first copy the `ansible_hosts_site` to the inventory directory under ansible. Then run the following scripts based on what you want to deploy.

The first playbook you should apply is `site.yml` which will configure the machine as a docker host.

``` sh
# assumes you current working directory is ansible
ansible-galaxy install -r requirements.yml
ansible-playbook -i inventory/ansible_hosts_site site.yml
```

After this, you should apply `weatherapp.yml` playbook which will configure the docker containers. This playbook requires `weatherapp_appid` and `weatherapp_version` to be set.

``` sh
# assumes you current working directory is ansible
ansible-galaxy install -r requirements.yml
ansible-playbook -i inventory/ansible_hosts_site weatherapp.yml \
            --extra-vars "weatherapp_appid=<appid>" \
            --extra-vars "weatherapp_version=<version>"
```
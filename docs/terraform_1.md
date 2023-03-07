# Terraform 


## Azure 

If you do not already have azure configured, follow the guide
[here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret) to get your `tenant_id`, `subscription_id`, `client_id`, `client_secret` as they will be needed to configure the azurerm terraform provider.

## Azure Provider

This example was configured for authentication using a service principal with a client secret. See the `variables.tf` file and `providers.tf` file respectively. This example assumed you want to provide variables for the provider through the cli flag `--var-file=<file>.tfvars`.
- During CI, these variables will be provided by github secrets. 
- During dev, each developer will have their own dev.tfvars file.

Get these setup and continue to [part 2](terraform_2.md) when you are done.

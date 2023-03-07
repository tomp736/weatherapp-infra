variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "weather"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "West Europe"
}

variable "tenant_id" {
  description = "azure rm tenant id."
}

variable "subscription_id" {
  description = "azure rm subscription id."
}

variable "client_id" {
  description = "azure rm client id."
}

variable "client_secret" {
  description = "azure rm client secret."
}

variable "deploy_pubkey" {
  description = "public key for deployments."
}
# Azure authentication and subscription details
variable "subscription_id" {
  description = "Azure Subscription ID where the storage account will be created."
  type        = string
  default     = "<%=customOptions.azurergprep_subscriptionid%>"
}

variable "tenant_id" {
  description = "Azure Active Directory Tenant ID."
  type        = string
  default    = "<%=customOptions.azurergprep_tenantid%>"
}

variable "client_id" {
  description = "Azure Service Principal Client ID."
  type        = string
  sensitive   = true
  default = "<%=customOptions.azurergprep_clientid%>"
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret."
  type        = string
  sensitive   = true
  default    = "<%=customOptions.azurergprep_clientsecret%>"
}

# Resource configuration
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default = "<%=customOptions.azurergprep_rg%>"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "<%=customOptions.azLocation%>"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
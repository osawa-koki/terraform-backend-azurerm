
variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "subscription_id" {
  type        = string
  description = "The subscription ID"
}

variable "client_id" {
  type        = string
  description = "The client ID"
}

variable "client_secret" {
  type        = string
  description = "The client secret"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID"
}

variable "ssh_public_key" {
  type        = string
  description = "Content of the public key."
}

variable "allowed_ip_addresses" {
  type        = list(string)
  description = "IP addresses allowed to access the instance."
}

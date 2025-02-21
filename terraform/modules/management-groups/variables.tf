# The ID of the root management group
variable "root_id" {
  type    = string
  default = "44a926b2-f8ee-464b-b28a-5e6124f2bb56"
}

# The name of the root management group
variable "root_name" {
  type    = string
  default = "Tenant Root Group"
}

# Prefix for the management group names
variable "mg_prefix" {
  description = "Prefix for the management group names"
  type        = string
}

# Default Azure region for deployments
variable "default_location" {
  description = "Default Azure region for deployments"
  type        = string 
}

# Map of landing zones with optional parameters
variable "landing_zones" {
  type = map(object({
    parent          = optional(string, "root") # Defaults to "root" if not provided
    archetype_id    = optional(string, "default-archetype") # Defaults to "default-archetype"
    subscription_ids = optional(list(string), []) # Defaults to an empty list if not provided
    parameters      = optional(any, {}) # Optional map for additional parameters
    access_control  = optional(map(set(string)), {}) # Optional access control settings
    display_name    = optional(string) # Optional display name
  }))
  default = {} # Default empty map, so it's fully optional
}

# Root scope for policy assignments and management groups
variable "root_scope_resource_id" {
  type        = string
  description = "Root scope for policy assignments and management groups"
  default     = "/providers/Microsoft.Management/managementGroups/root-mg"
}

# Flag to deploy core landing zones
variable "deploy_core_landing_zones" {
  description = "Flag to deploy core landing zones"
  type        = bool
}

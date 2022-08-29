variable "resource_group_name" {
  type        = string
  description = "Name of the Resource group"
}

variable "location" {
  type        = string
  description = "Location in which resources to be created"
}

variable "resource_tag" {
  type        = string
  description = "Environment Tages for resources"
}

variable "aks_cluster_name" {
  type        = string
  description = "AKS clsuter name"
}

variable "mysqldb_name" {
  type        = string
  description = "Name of the mysql db unique globally"
}
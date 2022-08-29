module "network" {
    source = "git@github.com:kavinksm/terrafrom-azure-base.git//network?ref=1.0"
    resource_group_name = var.resource_group_name
    location = var.location
    resource_tag = var.resource_tag
}

module "acr" {
    source = "git@github.com:kavinksm/terrafrom-azure-base.git//acr?ref=1.0"
}

module "aks" {
    source = "git@github.com:kavinksm/terrafrom-azure-base.git//aks?ref=1.0"
    aks_cluster_name = var.aks_cluster_name
    depends_on = [module.network]
}

module "mysql" {
    source = "git@github.com:kavinksm/terrafrom-azure-base.git//mysql?ref=1.0"
    name = var.mysqldb_name
    depends_on = [module.network]
}
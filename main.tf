

module "databases" {
  for_each                   = var.databases
  source                     = "./components"
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  location                   = var.location
  name                       = each.key
  rg_name                    = var.rg_name
  storage_image_reference    = var.storage_image_reference
  zone_name                  = var.zone_name
  network_security_group_id  = var.network_security_group_id
}




module "applications" {
  depends_on                 = [ module.databases ]
  for_each                   = var.applications
  source                     = "./components"
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  location                   = var.location
  name                       = each.key
  rg_name                    = var.rg_name
  storage_image_reference    = var.storage_image_reference
  zone_name                  = var.zone_name
  network_security_group_id  = var.network_security_group_id
}


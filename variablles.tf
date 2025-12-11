variable "ip_configuration_subnet_id" {
  default = "/subscriptions/838d8d5b-1157-4504-a71d-1ef48775bbe3/resourceGroups/project-ecom/providers/Microsoft.Network/virtualNetworks/main/subnets/default"

}

variable "location" {
  default = "East US"
}

variable "rg_name" {
  default = "project-ecom"
}

variable "storage_image_reference" {
  default = "/subscriptions/838d8d5b-1157-4504-a71d-1ef48775bbe3/resourceGroups/project-ecom/providers/Microsoft.Compute/images/local-devops-practice"
}

variable "zone_name" {
  default = "tusharbytes.com"
}


variable "network_security_group_id" {
  default = "/subscriptions/838d8d5b-1157-4504-a71d-1ef48775bbe3/resourceGroups/project-ecom/providers/Microsoft.Network/networkSecurityGroups/allow-all"
}


variable "databases" {
  default = {
    mongodb = {}
    rabbitmq = {}
    mysql = {}
    redis = {}
  }
}


variable "applications" {
  default = {
    catalogue = {}
    user = {}
    cart = {}
    shipping = {}
    frontend = {}
    dispatch = {}
  }
}
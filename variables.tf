## Copyright © 2020, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "availability_domain" {}
variable "compartment_ocid" {}
variable "tenancy_ocid" {}

variable "use_existing_vcn" {
  default = true
}

variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "vcn" {
  default = ""
}

variable "node_subnet_id" {
  default = ""
}

variable "node_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "lb_subnet_id" {
  default = ""
}

variable "lb_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "api_endpoint_subnet_id" {
  default = ""
}

variable "api_endpoint_subnet_cidr" {
  default = "10.0.3.0/24"
}

variable "oke_cluster" {
  type = map(any)
  default = {
    name                          = "OKECluster"
    vcn_native                    = true
    is_api_endpoint_subnet_public = false
    is_lb_subnet_public           = false
    is_node_subnet_public         = false
    k8s_version                   = "v1.20.11"
    pool_name                     = "Demo_Node_Pool"
    node_shape                    = "VM.Standard.E3.Flex"
    node_ocpus                    = 1
    node_memory                   = 4
    pods_cidr                     = "10.1.0.0/16"
    services_cidr                 = "10.2.0.0/16"
    node_linux_version            = "7.9"
    node_count                    = 3
  }
}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  default = true
}
variable "cluster_options_add_ons_is_tiller_enabled" {
  default = true
}
variable "node_pool_initial_node_labels_key" {
  default = "key"
}
variable "node_pool_initial_node_labels_value" {
  default = "value"
}
variable "ssh_public_key" {
  default = ""
}


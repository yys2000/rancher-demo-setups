#-----------------------------------------#
# vCenter Connection
#-----------------------------------------#

variable "vcenter_user" {
  type = string
}

variable "vcenter_password" {
  type = string
}

// vCenter server FQDN or IP address
variable "vcenter_server" {
  type = string
}

// Skip certificate verification
variable "vcenter_insecure" {
  default = false
}

#-----------------------------------------#
# DigitalOcean Configuration
#-----------------------------------------#

variable "digitalocean_token" {
  type        = string
  description = "DigitalOcean API token"
}

#-----------------------------------------#
# Rancher Configuration
#-----------------------------------------#

// Used for Let's Encrypt registration
variable "email" {
  type = string
}

variable "cert_manager_version" {
  type = string
}

variable "rke_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for Rancher server RKE cluster"
  default     = "v1.17.4-rancher1-3"
}

# Number of nodes to create for the first cluster
variable "rancher_num_cluster_nodes" {
  default = 3
}

variable "cluster_nodes_name_prefix" {
  type = string
}

variable "rancher_domain" {
  type        = string
  description = "DNS domain for rancher"
}

variable "rancher_subdomain" {
  type        = string
  description = "DNS sub domain for rancher"
}

variable "rancher_version" {
  type = string
}

variable "rancher_admin_password" {
  type = string
}

#-----------------------------------------#
# Node Configuration
#-----------------------------------------#

variable "vm_template_name" {
  type = string
}

// Number of vCPUs to assign to worker nodes
variable "node_num_cpus" {
  default = "2"
}

// Memory size in MB to assign to worker nodes
variable "node_memory_mb" {
  default = "4096"
}

// Docker version to install on VMs
variable "docker_version" {
  default = "19.03"
}

#-----------------------------------------#
# vSphere Resource Configuration
#-----------------------------------------#

# vSphere datacenter to use
variable "vsphere_datacenter" {
  type = string
}

# vSphere cluster to use (required unless vsphere_resource_pool is specified)
variable "vsphere_cluster" {
  type = string
  default = ""
}

# vSphere resource pool to use (required unless vsphere_cluster is specified)
variable "vsphere_resource_pool" {
  type = string
  default = ""
}

# Name/path of datastore to use
variable "vsphere_datastore" {
  type = string
}

# VM Network to attach the VMs
variable "vsphere_network" {
  type = string
}

#-----------------------------------------#
# Management
#-----------------------------------------#

# SSH public key to authorize for SSH access of the nodes
variable "ssh_key_file_name" {
  type        = string
  description = "File path and name of SSH private key used for infrastructure and RKE"
  default     = "~/.ssh/id_rsa"
}

# Local variables used to reduce repetition
locals {
  node_username = "ubuntu"
}
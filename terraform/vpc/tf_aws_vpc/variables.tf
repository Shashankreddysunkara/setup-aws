variable "name" {}

variable "cidr" {}

variable "public_subnets_cidr" {
  description = "CIDR for your public subnets"
//  type = list
//  default = ["172.31.16.0/20", "172.31.48.0/20", "172.31.80.0/20"]
}

variable "private_subnets_cidr" {
  description = "CIDR for your private subnets"
//  type = list
//  default = ["172.31.32.0/20", "172.31.64.0/20", "172.31.96.0/20"]
}

variable "azs" {
  description = "A list of Availability zones in the region"
//  type = map
//  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "az_count" {
  description = "number of azs in the region"
}

variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "enable_nat_gateway" {
  description = "should be true if you want to provision NAT Gateways for each of your private networks"
  default     = true
}

variable "map_public_ip_on_launch" {
  description = "should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

variable "private_propagating_vgws" {
  description = "A list of VGWs the private route table should propagate."
  default     = []
}

variable "public_propagating_vgws" {
  description = "A list of VGWs the public route table should propagate."
  default     = []
}

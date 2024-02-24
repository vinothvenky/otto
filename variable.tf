
variable "AWS_REGION" {    
    default = "us-east-1"
}

# VPC tag name
variable "vpc_tag_name" {
  description = "Name tag for the VPC"
  type        = map(any)
  default = {
    nw-live  = "idl-live-network"
    nw-non-live = "idl-nonlive-network"
    nw-securitymgmt  = "idl-securitymgmt"
  }
}

variable "vpc_cidr" {
    type = map(any)
    default = {
        nw-live = "192.168.80.0/23"
        nw-non-live = "192.168.82.0/24"
        nw-securitymgmt = "192.168.83.0/24"
    }
}


# Public Subnet CIDR blocks

variable "nw_live_public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = map(any)
  default = {
    
    nw-live-public-ig1 = "192.168.80.0/28"
    nw-live-public-ig2 = "192.168.80.48/28"
    nw-live-public-ig3 = "192.168.80.64/28"
    nw-live-public-ig4 = "192.168.80.112/28"
       
  }
}

# Private Subnet CIDR blocks

variable "nw_live_private_subnet_cidr_block" {
  description = "CIDR block for Live private subnet"
  type        = map(any)
  default = {
    
    nw-live-private-fw1 = "192.168.80.32/28"
    nw-live-private-fw2 = "192.168.80.16/28"
    nw-live-private-fw3 = "192.168.80.96/28"
    nw-live-private-fw4 = "192.168.80.80/28"
    
    
  }
}

# App Private Subnet CIDR blocks
variable "nw_live_app_subnet_cidr_block" {
  description = "CIDR block for Live App subnet"
  type        = map(any)
  default = {
    
    nw-live-app1 = "192.168.80.128/28"
    nw-live-app2 = "192.168.80.144/28"
    nw-live-app3 = "192.168.80.160/28"
    nw-live-app4 = "192.168.80.176/28"
    nw-live-app5 = "192.168.80.192/28"

    
  }
}

# Live TransitGateway Subnet CIDR blocks
variable "nw_live_tgw_subnet_cidr_block" {
  description = "CIDR block for Live App subnet"
  type        = map(any)
  default = {
    
    nw-live-tgw-attac1 = "192.168.80.208/28"
    nw-live-tgw-attac2 = "192.168.80.224/28"
    nw-live-tgw-attac3 = "192.168.80.240/28"

   
  }
}


variable "nw_nonlive_public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = map(any)
  default = {
    
   nw-nonlive-public-ig = "192.168.82.128/28"
    
  }
}

variable "nw_nonlive_private_subnet_cidr_block" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {
    
   nw-nonlive-private-fw1 = "192.168.82.144/28"
    
  }
}

variable "nw_securitymgmt_private_subnet_cidr_block" {
  description = "CIDR block for nonlive private subnet"
  type        = map(any)
  default = {
    
   nw-securitymgmt-private-fw1 = "192.168.83.0/26"
   nw-securitymgmt-private-fw2 = "192.168.83.64/26"
   nw-securitymgmt-private-fw3 = "192.168.83.224/28"
    
  }
}


variable "subnet_tag_names" {
  type = map(string)
  default = {
    nw-live-public-ig1 = "idl-live-public-ig1"
    nw-live-public-ig2 = "idl-live-public-ig2"
    nw-live-public-ig3 = "idl-live-public-ig3"
    nw-live-public-ig4 = "idl-live-public-ig4"

    nw-live-private-fw1 = "idl-live-private-fw1"
    nw-live-private-fw2 = "idl-live-private-fw2"
    nw-live-private-fw3 = "idl-live-private-fw3"
    nw-live-private-fw4 = "idl-live-private-fw4"

    nw-live-app1 = "idl-live-app-1"
    nw-live-app2 = "idl-live-app-2"
    nw-live-app3 = "idl-live-app-3"
    nw-live-app4 = "idl-live-app-4"
    nw-live-app5 = "idl-live-app-5"

    nw-live-tgw-attac1 = "idl-live-pvt-tgw-attac1"
    nw-live-tgw-attac2 = "idl-live-pvt-tgw-attac2"
    nw-live-tgw-attac3 = "idl-live-pvt-tgw-attac3"



    nw-nonlive-public-ig = "idl-nonlive-public-ig"
    nw-nonlive-private-fw1 = "idl-nonlive-private-fw1"
    nw-securitymgmt-private-fw1 = "idl-private-securitymgmt1"
    nw-securitymgmt-private-fw2 = "idl-private-securitymgmt2"
    nw-securitymgmt-private-fw3 = "idl-private-securitymgmt3"
  }
}

variable "nw_subnet_az" {
  description = "Availability zone for private subnet 2"
  type        = map(any)
  default = {
    az_a  = "us-east-1a"
    az_b = "us-east-1b"
    az_c = "us-east-1c"
   
  }
}


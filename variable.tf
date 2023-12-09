variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR BLOCK"
    type = string

  
}

variable "public_subnet_az1_cidr" {
    default = "10.0.0.0/24"
    description = "Public Subnet AZ1 CIDR BLOCK"
    type = string

  
}

variable "public_subnet_az2_cidr" {
    default = "10.0.1.0/24"
    description = "Public Subnet AZ2 CIDR BLOCK"
    type = string

  
}

variable "open_internet" {
    default = "0.0.0.0/0"
    description = "allow all ip CIDR BLOCK"
    type = string

  
}

variable "private_app_subnet_az1_cidr" {
    default = "10.0.2.0/24"
    description = "Private App Subnet AZ2 CIDR BLOCK"
    type = string

  
}

variable "private_app_subnet_az2_cidr" {
    default = "10.0.3.0/24"
    description = "Private App AZ2 CIDR BLOCK"
    type = string

  
}

variable "private_data_subnet_az1_cidr" {
    default = "10.0.4.0/24"
    description = "Private Data Subnet AZ2 CIDR BLOCK"
    type = string

  
}

variable "private_data_subnet_az2_cidr" {
    default = "10.0.5.0/24"
    description = "Private Data AZ2 CIDR BLOCK"
    type = string

  
}
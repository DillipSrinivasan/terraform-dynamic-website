resource "aws_vpc" "webserver-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "webserver-vpc"
  }
}

output "vpc_id" {
    value = [aws_vpc.webserver-vpc.id]
  
}
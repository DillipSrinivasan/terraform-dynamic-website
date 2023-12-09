resource "aws_subnet" "private_app_subnet_az1" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.private_app_subnet_az1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private App Subnet AZ1"
  }
}


resource "aws_subnet" "private_app_subnet_az2" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.private_app_subnet_az2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private App Subnet AZ1"
  }
}


resource "aws_subnet" "private_data_subnet_az1" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.private_data_subnet_az1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Data Subnet AZ1"
  }
}


resource "aws_subnet" "private_data_subnet_az2" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.private_data_subnet_az2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Data Subnet AZ1"
  }
}
output "private_subnet_id" {
    value = [aws_subnet.private_app_subnet_az1.id,aws_subnet.private_app_subnet_az2.id, aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  
}
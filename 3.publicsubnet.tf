resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.public_subnet_az1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet AZ1"
  }
}


resource "aws_subnet" "public_subnet_az2" {
  vpc_id                  = aws_vpc.webserver-vpc.id
  cidr_block              = var.public_subnet_az2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet AZ2"
  }
}

output "public_subnet_id" {
    value = [aws_subnet.public_subnet_az1.id,aws_subnet.public_subnet_az2.id]
  
}
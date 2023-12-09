resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = aws_vpc.webserver-vpc.id

  tags      = {
    Name    = "VPC internet gateway"
  }
}

output "IG_id" {
    value = [aws_internet_gateway.internet_gateway.id]
  
}
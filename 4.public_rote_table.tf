resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.webserver-vpc.id

    route {
        cidr_block = var.open_internet
        gateway_id = aws_internet_gateway.internet_gateway.id
    }

    tags = {
      Name ="Public Route Table"
    }
  
}

# Associate public subnet with public route table

resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
    subnet_id = aws_subnet.public_subnet_az1.id
    route_table_id = aws_route_table.public_route_table.id
  
}

resource "aws_route_table_association" "public_subnet_az2_route_table_association" {
    subnet_id = aws_subnet.public_subnet_az2.id
    route_table_id = aws_route_table.public_route_table.id
  
}

output "aws_route_table_id" {
    value = [aws_route_table.public_route_table.id]
  
}
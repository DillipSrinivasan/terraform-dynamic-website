#private_route_table_az1

resource "aws_route_table" "private_route_table_az1" {
    vpc_id = aws_vpc.webserver-vpc.id

    route {
        cidr_block = var.open_internet
        gateway_id = aws_nat_gateway.natgatway_az1.id
    }

    tags = {
      Name ="Private Route Table AZ1"
    }
  
}

# Associate public subnet with public route table

resource "aws_route_table_association" "private_route_table_app_az1_association" {
    subnet_id = aws_subnet.private_app_subnet_az1.id
    route_table_id = aws_route_table.private_route_table_az1.id
  
}

resource "aws_route_table_association" "private_route_table_data_az1_association" {
    subnet_id = aws_subnet.private_data_subnet_az1.id
    route_table_id = aws_route_table.private_route_table_az1.id
  
}


#private_route_table_az2
resource "aws_route_table" "private_route_table_az2" {
    vpc_id = aws_vpc.webserver-vpc.id

    route {
        cidr_block = var.open_internet
        gateway_id = aws_nat_gateway.natgatway_az2.id
    }

    tags = {
      Name ="Private Route Table AZ2"
    }
  
}

# Associate public subnet with public route table

resource "aws_route_table_association" "private_route_table_app_az2_association" {
    subnet_id = aws_subnet.private_app_subnet_az2.id
    route_table_id = aws_route_table.private_route_table_az2.id
  
}

resource "aws_route_table_association" "private_route_table_data_az2_association" {
    subnet_id = aws_subnet.private_data_subnet_az2.id
    route_table_id = aws_route_table.private_route_table_az2.id
  
}

 output "aws_private_route_table_id" {
     value = [aws_route_table.private_route_table_az1.id, aws_route_table.private_route_table_az2.id]
  
 }

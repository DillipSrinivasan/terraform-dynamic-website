#EIP allocation

resource "aws_eip" "eip1_az1" {
    vpc = true

    tags = {
      Name ="AZ1 EIP1"
    }
  
}


resource "aws_eip" "eip2_az2" {
    vpc = true

    tags = {
      Name="AZ2 EIP2"
    }
  
}

output "eip_id" {
    value = [aws_eip.eip1_az1.id, aws_eip.eip2_az2.id]
  
}


#Nat Gatway AZ1
resource "aws_nat_gateway" "natgatway_az1" {
    allocation_id = aws_eip.eip1_az1.id
    subnet_id = aws_subnet.public_subnet_az1.id

    tags = {
      Name = "Nat gatway AZ1"
    }

    depends_on = [aws_internet_gateway.internet_gateway]
  
}


#Nat Gatway AZ2
resource "aws_nat_gateway" "natgatway_az2" {
    allocation_id = aws_eip.eip2_az2.id
    subnet_id = aws_subnet.public_subnet_az2.id

    tags = {
      Name = "Nat gatway AZ1"
    }

    depends_on = [aws_internet_gateway.internet_gateway]
  
}

output "natgatway_id" {
    value = [aws_nat_gateway.natgatway_az1.id, aws_nat_gateway.natgatway_az2.id]
  
}
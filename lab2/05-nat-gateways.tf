resource "aws_nat_gateway" "nat_gateway_1" {
  subnet_id     = aws_subnet.cluster-subnet-public-1.id
  allocation_id = aws_eip.nat1.id
  tags = {
    Name = "nat-gateway-1"
  }
}

resource "aws_nat_gateway" "nat_gateway_2" {
  subnet_id     = aws_subnet.cluster-subnet-public-2.id
  allocation_id = aws_eip.nat2.id
  tags = {
    Name = "nat-gateway-2"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cluster-vpc.id
  tags = {
    Name = "igw-cluster-vpc"
  }
}
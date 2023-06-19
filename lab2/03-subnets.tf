resource "aws_subnet" "cluster-subnet-public-1" {
  vpc_id                  = aws_vpc.cluster-vpc.id
  cidr_block              = "10.0.0.0/26"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name                                        = "public-us-east-1a"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_subnet" "cluster-subnet-public-2" {
  vpc_id                  = aws_vpc.cluster-vpc.id
  cidr_block              = "10.0.0.64/26"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name                                        = "public-us-east-1b"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_subnet" "cluster-subnet-private-1" {
  vpc_id            = aws_vpc.cluster-vpc.id
  cidr_block        = "10.0.0.128/26"
  availability_zone = "us-east-1a"
  tags = {
    Name                                        = "private-us-east-1a"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}

resource "aws_subnet" "cluster-subnet-private-2" {
  vpc_id            = aws_vpc.cluster-vpc.id
  cidr_block        = "10.0.0.192/26"
  availability_zone = "us-east-1b"
  tags = {
    Name                                        = "public-us-east-1b"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}
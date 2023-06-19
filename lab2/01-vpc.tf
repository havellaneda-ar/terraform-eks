resource "aws_vpc" "cluster-vpc" {
  cidr_block = "10.0.0.0/16"

  #This option is to used dedicated hardware o not. Possible values are default or dedicated.
  instance_tenancy = "default"

  #These option are to enable (or not) the dns and hostname support. Possible values are true or false. Required for EKS. 
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "cluster-vpc"
  }
}

output "vpc_id" {
  value       = aws_vpc.cluster-vpc.id
  description = "The ID of the VPC"
  sensitive   = false
}
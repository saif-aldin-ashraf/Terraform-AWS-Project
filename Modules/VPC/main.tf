resource "aws_vpc" "mo_VPC" {
    cidr_block = var.Vpc-cidr
    tags = {
      Name = var.VPC-Name
    }
}

resource "aws_internet_gateway" "project_IGW" {
  vpc_id = aws_vpc.mo_VPC.id
  tags = {
    Name = var.IGW-name
  }
}
## VPC

resource "aws_vpc" "ohr486base" {
  cidr_block = local.cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name     = "ohr486base-vpc"
    Resource = local.resource
  }
}

## Subnet

resource "aws_subnet" "ohr486base_public1" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1a"
  cidr_block = cidrsubnet(local.cidr, 4, 0)
  tags = {
    Name     = "ohr486base-public1"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_public2" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1c"
  cidr_block = cidrsubnet(local.cidr, 4, 1)
  tags = {
    Name     = "ohr486base-public2"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_public3" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1d"
  cidr_block = cidrsubnet(local.cidr, 4, 2)
  tags = {
    Name     = "ohr486base-public3"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private1" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1a"
  cidr_block = cidrsubnet(local.cidr, 4, 3)
  tags = {
    Name     = "ohr486base-private1"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private2" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1c"
  cidr_block = cidrsubnet(local.cidr, 4, 4)
  tags = {
    Name     = "ohr486base-private2"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private3" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1d"
  cidr_block = cidrsubnet(local.cidr, 4, 5)
  tags = {
    Name     = "ohr486base-private3"
    Resource = local.resource
  }
}


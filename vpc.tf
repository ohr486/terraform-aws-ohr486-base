## VPC

resource "aws_vpc" "ohr486base" {
  cidr_block = local.cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name     = "${local.resource}-vpc"
    Resource = local.resource
  }
}

## Subnet

resource "aws_subnet" "ohr486base_public1" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1a"
  cidr_block = cidrsubnet(local.cidr, 4, 0)
  tags = {
    Name     = "${local.resource}-public1"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_public2" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1c"
  cidr_block = cidrsubnet(local.cidr, 4, 1)
  tags = {
    Name     = "${local.resource}-public2"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_public3" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1d"
  cidr_block = cidrsubnet(local.cidr, 4, 2)
  tags = {
    Name     = "${local.resource}-public3"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private1" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1a"
  cidr_block = cidrsubnet(local.cidr, 4, 3)
  tags = {
    Name     = "${local.resource}-private1"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private2" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1c"
  cidr_block = cidrsubnet(local.cidr, 4, 4)
  tags = {
    Name     = "${local.resource}-private2"
    Resource = local.resource
  }
}

resource "aws_subnet" "ohr486base_private3" {
  vpc_id = aws_vpc.ohr486base.id
  availability_zone = "ap-northeast-1d"
  cidr_block = cidrsubnet(local.cidr, 4, 5)
  tags = {
    Name     = "${local.resource}-private3"
    Resource = local.resource
  }
}

## Gateway

resource "aws_internet_gateway" "ohr486base" {
  vpc_id = aws_vpc.ohr486base.id
  tags = {
    Name     = "${local.resource}-igw"
    Resource = local.resource
  }
}

## Route

resource "aws_route_table" "ohr486base_public" {
  vpc_id = aws_vpc.ohr486base.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ohr486base.id
  }
  tags = {
    Name     = "${local.resource}-public"
    Resource = local.resource
  }
}

resource "aws_route_table_association" "ohr486base_public1" {
  route_table_id = aws_route_table.ohr486base_public.id
  subnet_id      = aws_subnet.ohr486base_public1.id
}

resource "aws_route_table_association" "ohr486base_public2" {
  route_table_id = aws_route_table.ohr486base_public.id
  subnet_id      = aws_subnet.ohr486base_public2.id
}

resource "aws_route_table_association" "ohr486base_public3" {
  route_table_id = aws_route_table.ohr486base_public.id
  subnet_id      = aws_subnet.ohr486base_public3.id
}


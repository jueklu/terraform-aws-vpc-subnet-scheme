# VPC
resource "aws_vpc" "vpc" {
  provider = aws.aws_region
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "vpc"
    Env        = "Production"
  }
}


# Public Subnet "10.10.0.0/24"
resource "aws_subnet" "vpc_subnet_public1" {
  provider = aws.aws_region
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.vpc_subnet_cidr_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true

  tags = {
    Name      = "VPC Subnet-Public-1"
    Env       = "Production"
  }
}

# Private Subnet "10.10.1.0/24"
resource "aws_subnet" "vpc_subnet_private1" {
  provider = aws.aws_region
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_subnet_cidr_2
  availability_zone = var.availability_zone_1

  tags = {
    Name      = "VPC Subnet-Private-1"
    Env       = "Production"
  }
}

# Private Subnet "10.10.2.0/24"
resource "aws_subnet" "vpc_subnet_private2" {
  provider = aws.aws_region
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_subnet_cidr_3
  availability_zone = var.availability_zone_2

  tags = {
    Name      = "VPC Subnet-Private-2"
    Env       = "Production"
  }
}
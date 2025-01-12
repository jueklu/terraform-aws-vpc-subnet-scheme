# Elastic IP (EIP) for NAT Gateway
resource "aws_eip" "vpc_nat_gw_eip" {
  provider = aws.aws_region
  domain = "vpc"

  tags = {
    Name        = "VPC NAT-GW EIP"
    Env         = "Production"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "vpc_nat_gw" {
  provider = aws.aws_region
  allocation_id = aws_eip.vpc_nat_gw_eip.id
  subnet_id     = aws_subnet.vpc_subnet_public1.id

  tags = {
    Name        = "VPC NAT-GW"
    Env         = "Production"
  }

  depends_on = [aws_internet_gateway.vpc_igw]
}

# Internet Gateway
resource "aws_internet_gateway" "vpc_igw" {
  provider = aws.aws_region
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name        = "VPC IGW"
    Env         = "Production"
  }
}
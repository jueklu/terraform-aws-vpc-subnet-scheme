# Private Routing Table
resource "aws_route_table" "vpc_private_routetable" {
  provider = aws.aws_region
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.vpc_nat_gw.id
  }

  tags = {
    Name        = "VPC Private Route Table"
    Env         = "Production"
  }
}

# Public Routing Table
resource "aws_route_table" "vpc_public_routetable" {
  provider = aws.aws_region
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }

  tags = {
    Name        = "VPC Public Route Table"
    Env         = "Production"
  }
}


# Associate Routes with Subnets
resource "aws_route_table_association" "vpc_subnet_public1_ra" {
  provider = aws.aws_region
  subnet_id      = aws_subnet.vpc_subnet_public1.id
  route_table_id = aws_route_table.vpc_public_routetable.id
}

resource "aws_route_table_association" "vpc_subnet_private1_ra" {
  provider = aws.aws_region
  subnet_id      = aws_subnet.vpc_subnet_private1.id
  route_table_id = aws_route_table.vpc_private_routetable.id
}

resource "aws_route_table_association" "vpc_subnet_private2_ra" {
  provider = aws.aws_region
  subnet_id      = aws_subnet.vpc_subnet_private2.id
  route_table_id = aws_route_table.vpc_private_routetable.id
}
# VPC ID
output "vpc_ID" {
  value = aws_vpc.vpc.id
}

# Public Subnet ID
output "VPC_Public_Subnet_IDs" {
  value = [
    aws_subnet.vpc_subnet_public1.id
  ]
}

# Private Subnet IDs
output "VPC_Private_Subnet_IDs" {
  value = [
    aws_subnet.vpc_subnet_private1.id,
    aws_subnet.vpc_subnet_private2.id
  ]
}


# Public Routing Table ID
output "VPC_Public_Route_Table_ID" {
  value = aws_route_table.vpc_public_routetable.id
}

# Private Routing Table ID
output "VPC_Private_Route_Table_ID" {
  value = aws_route_table.vpc_private_routetable.id
}

# Internet Gateway ID
output "VPC_Internet_Gateway_ID" {
  value = aws_internet_gateway.vpc_igw.id
}

# NAT Gateway ID
output "VPC_NAT_Gateway_ID" {
  value = aws_nat_gateway.vpc_nat_gw.id
}
## Security Group

# vpc: Security Group ID
output "SecurityGroup_ID" {
  description = "Security Group ID for SSH Access"
  value       = aws_security_group.vpc_sg.id
}


## EC2 Instance IDs

# EC2 Instance ID: VM in Public Subnet
output "Public_Instance_ID" {
  description = "EC2 instance ID in public subnet"
  value       = aws_instance.ec2_public_subnet1.id
}

# EC2 Instance ID: VM in Private Subnet 1
output "Private_Instance1_ID" {
  description = "EC2 instance ID in private subnet 1"
  value       = aws_instance.ec2_private_subnet1.id
}

# EC2 Instance ID: VM in Private Subnet 2
output "Private_Instance2_ID" {
  description = "EC2 instance ID in private subnet 2"
  value       = aws_instance.ec2_private_subnet2.id
}


## EC2 IPs

# EC2 Instance public IP (VM in Public Subnet)
output "Public_Instance_Public_IP" {
  description = "Public IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_public_subnet1.public_ip
}

# EC2 Instance private IP (VM in Public Subnet)
output "Public_Instance_Private_IP" {
  description = "Private IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_public_subnet1.private_ip
}

# EC2 Instance private IP (VM1 in Private Subnet)
output "Private_Instance1_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 1"
  value       = aws_instance.ec2_private_subnet1.private_ip
}

# EC2 Instance private IP (VM2 in Private Subnet)
output "Private_Instance2_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 2"
  value       = aws_instance.ec2_private_subnet2.private_ip
}
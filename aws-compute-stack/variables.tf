# Input Variables for VPC, Subnets, SSH key pair and EC2 image IDs

## AWS Region

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}


## VPC

variable "vpc_id" {
  default = "vpc-0607851416f6722b5" # Define VPC ID
}

# Public Subnet
variable "vpc_public_subnet1_id" {
  default = "subnet-00f1d96a487a6ca6b" # Define public subnet ID
}

# Private Subnet 1
variable "vpc_private_subnet1_id" {
  default = "subnet-018c8424f296095fd" # Define private subnet 1 ID
}

# Private Subnet 2
variable "vpc_private_subnet2_id" {
  default = "subnet-0a9f8507df98af596" # Define private subnet 2 ID
}


## SSH Key and EC2 Image

# SSH key pair name
variable "key_name" {
  default = "us-east-1-pc-le" # Define key pair name
}

# EC2 Image ID
variable "ami_id" {
  default = "ami-0e2c8caa4b6378d8c" # Define EC2 AMI ID
}
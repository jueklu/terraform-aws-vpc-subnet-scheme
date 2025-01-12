## AWS Region & Availability Zones

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone_1" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1b"
}

variable "availability_zone_3" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1c"
}


## VPC: CIDR Blocks

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.10.0.0/16"
}

variable "vpc_subnet_cidr_1" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.10.0.0/24"
}

variable "vpc_subnet_cidr_2" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.10.1.0/24"
}

variable "vpc_subnet_cidr_3" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.10.2.0/24"
}
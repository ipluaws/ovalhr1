
variable "aws_profile"  { default = "default" }
variable "aws_region"   { default = "us-east-1" }

variable "project_name" { default = "ovalhr-dev" }

variable "ami_id" {
    default = "ami-0e472ba40eb589f49"
}

variable "instance_type" { default = "t2.micro" }
variable "key_pair"      { default = "ovalhr-dev" }

variable "enable_dns_support"   { default = true }
variable "enable_dns_hostnames" { default = true }

variable "vpc_cidr"      { default = "192.168.0.0/16" }
variable "public1_cidr"  { default = "192.168.1.0/24" }
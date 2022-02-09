
variable "aws_profile"  { default = "default" }
variable "aws_region"   { default = "us-east-1" }

variable "project_name" { default = "ovalhr" }

variable "ami_id" {
    default = "ami-0e472ba40eb589f49"
}

variable "instance_type" { default = "t2.micro" }
variable "key_pair"      { default = "ovalhr" }

variable "enable_dns_support"   { default = true }
variable "enable_dns_hostnames" { default = true }

variable "vpc_cidr"      { default = "10.0.0.0/16" }
variable "public1_cidr"  { default = "10.0.1.0/24" }
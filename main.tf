provider "aws" {
    profile   = var.aws_profile
    region    = var.aws_region
}

resource "aws_vpc" "ovalhr" {
  cidr_block       = var.vpc_cidr
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.ovalhr.id
  cidr_block = var.public1_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "${var.project_name}-net-public1"
  }
}
# Create a VPC
resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc1_cidr
  tags = {
    Name = var.vpc1_name
    owner = var.vpc1_owner
  }
}
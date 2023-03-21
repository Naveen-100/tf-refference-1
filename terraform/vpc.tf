# Create a VPC
resource "aws_vpc" "vpc1" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "vpc1"
    "createdby" = "terraform"
  }
}
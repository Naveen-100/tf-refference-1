resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "sub2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "192.168.2.0/24"
  tags = {
    Name = "subnet2"
  }
}
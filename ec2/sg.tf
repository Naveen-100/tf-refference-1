resource "aws_security_group" "allow_mine" {
  name        = "allow_mine"
  description = "Allow TLS inbound traffic"
  # not recomended to hard coded vpc_id
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    description      = "Allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["175.101.108.99/32"]
  }
    ingress {
    description      = "Allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["175.101.108.99/32"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
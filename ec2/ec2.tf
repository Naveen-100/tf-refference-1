resource "aws_instance" "ec2_demo" {
  ami = var.ec2_ami
  key_name = var.ec2_file
  associate_public_ip_address = true
  # subnet_id present at terraform project state file
  subnet_id= data.terraform_remote_state.vpc.outputs.subnet1
  instance_type= var.ec2_type
  vpc_security_group_ids = [aws_security_group.allow_mine.id]
}
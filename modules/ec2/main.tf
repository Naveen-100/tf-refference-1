data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "tf-bkt-001"
    key    = "nk/tfstate/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tf-bkt-001_table"
  }
  }

resource "aws_eip" "dptip" {
  instance = aws_instance.dptinstance.id
  vpc      = true
}

resource "aws_instance" "dptinstance" {
    ami = "ami-0d81306eddc614a45"
    associate_public_ip_address = var.associate_public_ip_address
    key_name = var.key_name
    instance_type = var.instance_type
    subnet_id = data.terraform_remote_state.vpc.outputs.subnet1
}
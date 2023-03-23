provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {
    bucket = "tf-bkt-001"
    key    = "nk/ec2/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tf-bkt-001_table"
  }
}

module "dptinstance" {
  source = "../modules/ec2"
  region = var.region
  associate_public_ip_address = var.associate_public_ip_address
  key_name = var.key_name
  instance_type = var.instance_type
}
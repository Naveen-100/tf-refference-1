module "vpc_from_module" {
  source = "../modules/vpc"
  region = var.region
  proj_name = var.proj_name
  vpc_cidr = var.vpc_cidr
  vpc_pub_subnet_az1_cidr = var.vpc_pub_subnet_az1_cidr
  vpc_pub_subnet_az2_cidr = var.vpc_pub_subnet_az2_cidr
  vpc_pri_subnet_az1_cidr = var.vpc_pri_subnet_az1_cidr
  vpc_pri_subnet_az2_cidr = var.vpc_pri_subnet_az2_cidr
  vpc_pri_subnet_az1_cidr_data = var.vpc_pri_subnet_az1_cidr_data
  vpc_pri_subnet_az2_cidr_data = var.vpc_pri_subnet_az2_cidr_data
}
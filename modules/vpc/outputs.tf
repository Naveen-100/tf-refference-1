output "region" {
  value = var.region
}
output "proj_name" {
  value = var.proj_name
}
output "vpc_cidr_id" {
  value = aws_vpc.vpc.id
}
output "vpc_pub_subnet_az1_cidr_id" {
  value = aws_subnet.public_subnet_az1.id
}
output "vpc_pub_subnet_az2_cidr_id" {
  value = aws_subnet.public_subnet_az2.id
}
output "vpc_pri_subnet_az1_cidr_id" {
  value = aws_subnet.private_app_subnet_az1.id
}
output "vpc_pri_subnet_az2_cidr_id" {
  value = aws_subnet.private_app_subnet_az2.id
}
output "vpc_pri_subnet_az1_cidr_data_id" {
  value = aws_subnet.private_data_subnet_az1.id
}
output "vpc_pri_subnet_az2_cidr_data_id" {
  value = aws_subnet.private_data_subnet_az2.id
}

output "igw" {
  value = aws_internet_gateway.internet_gateway
}
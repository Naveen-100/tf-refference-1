output "vpc_id" {
    value = aws_vpc.vpc1.id
}
output "subnet1" {
    value = aws_subnet.sub1.id
}
output "subnet2" {
    value = aws_subnet.sub2.id
}
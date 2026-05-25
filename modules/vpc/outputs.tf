output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "subnet_1_id" {
  value = aws_subnet.sN1.id
}
output "subnet_2_id" {
  value = aws_subnet.sN2.id
}
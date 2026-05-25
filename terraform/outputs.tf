output "subnet_1_id" {
  value = module.myvpc.subnet_1_id
}
output "subnet_2_id" {
  value = module.myvpc.subnet_2_id
}
output "bucketName" {
  value = aws_s3_bucket.s3.id
}
output "vpc_id" {
  value = module.myvpc.vpc_id
}
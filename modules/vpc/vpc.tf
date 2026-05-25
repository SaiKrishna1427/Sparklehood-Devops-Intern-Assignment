resource "aws_vpc" "vpc" {
  cidr_block = var.cidr
  region = var.region
  tags = {
    Project = "NimbusKart"
    Environment = "Staging"
    Owner = "Sparklehood"
    ManagedBy = "terraform"
  }
}
resource "aws_subnet" "sN1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_1
  availability_zone = var.az_1
}
resource "aws_subnet" "sN2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_2
  availability_zone = var.az_2
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
  region = var.region
}
resource "aws_route_table" "rT" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}
resource "aws_route_table_association" "rT1" {
  subnet_id      = aws_subnet.sN1.id
  route_table_id = aws_route_table.rT.id
}
resource "aws_route_table_association" "rT2" {
  subnet_id      = aws_subnet.sN2.id
  route_table_id = aws_route_table.rT.id
}
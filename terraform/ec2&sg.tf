resource "aws_security_group" "sg" {
  name        = "security-firewall"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = module.myvpc.vpc_id
  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Project = "NimbusKart"
    Environment = "Staging"
    Owner = "Sparklehood"
    ManagedBy = "terraform"
  }
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = "t3.micro"
  count         = 2
  availability_zone = var.az_1
  tags = {
    Name = "web tier-${count.index}"
    Project = "NimbusKart"
    Environment = "Staging"
    Owner = "Sparklehood"
    ManagedBy = "terraform"
  }
}
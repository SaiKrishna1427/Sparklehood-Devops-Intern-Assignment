variable "region" {
  type    = string
  default = "ap-south-2"
}
variable "cidr" {
  default = "10.20.0.0/16"
}
variable "subnet_1" {
  default = "10.20.1.0/24"
}
variable "subnet_2" {
  default = "10.20.2.0/24"
}
variable "az_1" {
  default = "ap-south-2a"
}
variable "az_2" {
  default = "ap-south-2b"
}
variable "ssh_cidr" {
  default = "0.0.0.0/0"
}

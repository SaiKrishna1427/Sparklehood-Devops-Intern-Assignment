variable "az_1" {
  default = "ap-south-2a"
}
variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [80, 443, 22]
}
variable "ami" {
  default = "ami-024ebedf48d280810"
}
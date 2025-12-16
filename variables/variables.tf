variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "terraform-demo"
    type        = "t3.micro"
    terraform   = "true"
    Project     = "terraform"
    Environment = "development"
  }

}
variable "sg_name" {
  default = "allow-all"
}
# variable "sg_name"{
#     type = string
#     default = "allow-all"
#     #description = "Security group created to attach to ec2 instance created through terraform"
# }
variable "cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}
variable "ingress_from_port" {
  default = 0
}
variable "ingress_to_port" {
  default = 0
}

variable "egress_from_port" {
  default = 0
}
variable "egress_to_port" {
  default = 0
}
variable "protocol" {
  type    = string
  default = "-1"
}
variable "region" {
  type = string
  description = "The AWS region."
}

variable "key_name" {
  type = string
  description = "The AWS key pair to use for resources."
  default     = "terraform-book"
}

variable "key_path" {
  default = "/Users/richardshaw/Downloads/terraform-book.pem"
}

variable "ami" {
  type        = map(string)
  description = "A map of AMIs"
  default     = {}
}

variable "instance_type" {
  type = string
  description = "The instance type to launch."
  default     = "t2.micro"
}

variable "instance_ips" {
  type = list(string)
  description = "The IPs to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "environment" {
  description = "name of environment"
  default = "web"
}

variable "prefix" {
  default = "mobilise-rs"
}
variable "region" {
    type = string
    description = "The AWS region"
    default = "eu-west-2"
}

variable "environment" {
  default = "base"
  description = "environment name"
}

variable "prefix" {
  default = "mobilise-rs"
}
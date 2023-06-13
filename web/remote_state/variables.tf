variable "region" {
  description = "The AWS region"
  default = "eu-west-2"
}

variable "prefix" {
  description = "The name of our org, i.e. examplecom."
  default     = "rs-mobilise"
}

variable "environment" {
  description = "The name of the environment."
  default     = "web"
}
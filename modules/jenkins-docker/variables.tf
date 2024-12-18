
variable "instance" {

  type    = string
  default = "t2.medium"
}
variable "key" {
  type    = string
  default = "devopspat35"
}
variable "name" {
  type    = string
  default = "Jenkins-docker"
}
variable "namespace" {
  type    = string
  default = "dev"
}
variable "subnet" {
  type    = string
  default = "subnet-07153287847617038"
}
variable "ami" {
  type    = string
  default = "ami-0ea3c35c5c3284d82"
}

variable "main-region" {
  type    = string
  default = "us-east-2"
}


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
  default = "terraform-eks-kubectl-helm"
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
  default = "ami-08978028fd061067a"
}

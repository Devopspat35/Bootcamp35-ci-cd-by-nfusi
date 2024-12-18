
output "ami" {
  description    = "instance ami to be added"
  value          = module.jenkins-docker.ami
}
output "instance" {
  description    = "instance type to be created"
  value          = module.jenkins-docker.instance
}

output "key" {
  description    = "instance key to be added"
  value          = module.jenkins-docker.key
}

output "name" {
  description    = "instance name to be added"
  value          = module.jenkins-docker.name
}
output "namespace" {
  description    = "instance to be added in the namespace"
  value          = module.jenkins-docker.namespace
}
output "subnet" {
  description    = "instance subnet to be added"
  value          = module.jenkins-docker.subnet
}


output "main-region" {
  description    = "instance main-region to be provision"
  value          = module.jenkins-docker.main-region
}
output "tags" {
  description = "tags assigned to the resource "
  value       = module.jenkins-docker.tags
}


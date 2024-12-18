resource "aws_instance" "twtech" {
  ami             = var.ami
  instance_type   = var.instance
  key_name        = var.key
  user_data       = file("${path.module}/bootstrap.sh")
  count           = 1
  subnet_id       = var.subnet
  security_groups = ["sg-06bd8ebe6246515da"]
  tags = {
    Name = "maven-sonarqube"
    env  = var.namespace
  }
}

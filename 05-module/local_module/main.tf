resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
}

variable "input" { }
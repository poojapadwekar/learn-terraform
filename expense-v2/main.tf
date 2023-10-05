module "expense" {
  count     = 3
  source    = "./module(app_creation)"
  component = var.expense[count.index]
}

variable "expense" {
  default = ["frontend, backend, mysql"]
}
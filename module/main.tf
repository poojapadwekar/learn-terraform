module "test" {
  source = "./local_module"
  input = "Hello Universe"

}

variable "input" {
  default = "Hello Universe"

}
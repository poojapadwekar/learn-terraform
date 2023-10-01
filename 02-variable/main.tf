variable "fruit" {
  default = "apple"
}

variable "fruits" {
  default = ["apple", "banana"]
}

variable "fruits_print" {
  default = {
    apple=10
    banana= 20
  }
}

output "fruiit" {
  value = var.fruit
}

output "fruits" {
  value = var.fruits[0]
}
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

output "fruit" {
  value = var.fruit
}

output "fruits" {
  value = var.fruits[0]

}

output "fruits_print" {
  value = "Price of apple = ${var.fruits_print["apple"]}"
}
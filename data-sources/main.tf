#use count for loop
/*resource "null_resource" "fruits"{
 count = length(var.fruits)

  provisioner "local-exec"{
    command = "echo fruit name is ${var.fruits[count.index]}"
  }
} */

variable "fruits"{
  default = {
    apple=10
    bananas=100
    oranges=20
  }
}

# Use for each loop - maps
resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name is ${each.key} = ${each.value} "
  }
}

variable "nested_fruits"{
  default = {
    apple= {
  name  = "apple"
  count = 10
}
bananas= {
  name = "bananas"
  count = 200
}
oranges={
  name= "oranges"
count = 20}
}
}

resource "null_resource" "fruits" {
for_each = var.nested_fruits

provisioner "local-exec" {
command = "echo fruit name is ${each.key} = ${each.value["count"]} "
}
}


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
esource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name is ${each.key} = ${each.value} "
  }
}
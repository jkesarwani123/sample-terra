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

resource "null_resource" "nested_fruits" {
  for_each = var.nested_fruits

  provisioner "local-exec" {
    command = "echo nested fruit name is ${each.key} = ${each.value["name"]} "
  }
}
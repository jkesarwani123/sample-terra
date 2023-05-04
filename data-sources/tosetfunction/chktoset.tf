variable "vegetables"{
  default = ["carrot", "pumpkin", "onion"]
}

resource "null_resource" "print_veggies"{
  for_each = toset(var.vegetables)
  provisioner "local-exec" {
    command ="vegetables are ${each.key}"
  }
}
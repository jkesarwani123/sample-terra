variable "vegetables" {
  default = ["carrot", "pumpkin", "onion"]
}

resource "null_resource" "print_veggies"{
  for_each = toset(var.vegetables)
  provisioner "local-exec" {
    command ="echo vegetables are ${each.key}"
  }
}
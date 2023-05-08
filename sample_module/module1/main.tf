resource "null_resource" "module-terra"{
  provisioner "local-exec" {
    command="echo sample module-1 is ${var.input_var}"
  }
}
variable "input_var" {}
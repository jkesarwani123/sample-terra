resource "null_resource" "module-terra"{
  provisioner "local-exec" {
    command="echo sample module-1"
  }
}
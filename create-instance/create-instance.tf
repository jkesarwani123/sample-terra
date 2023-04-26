variable "sample_string"{
  default=" hello world"
}
# sample_string="hello world"

output "sample_string"{
  value=var.sample_string
}
# echo sample_string
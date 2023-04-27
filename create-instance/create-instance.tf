variable "sample_string" {
  default =" hello world"
}
# sample_string="hello world"

output "sample_string" {
  value = var.sample_string
}
# echo sample_string

output "sample_string1" {
  value = " the sample string is ${var.sample_string}"
}

variable "sample_dict"{
  default= {
    number1=100
    string1="hello"
    boolean1=true
  }
}
 output "sample_dict"{
   value=var.sample_dict.number1
 }
output "sample_dict1"{
  value=var.sample_dict["number1"]
}

output "sample_dict_string"{
  value=var.sample_dict.string1
}

variable "env" {}
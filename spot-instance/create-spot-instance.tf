data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

variable "instanceTy" {
  default = "t3.micro"
}

output "ami" {
  value=data.aws_ami.centos.image_id
}

variable "components" {
  default = [ "frontend","mongodb","catalogue" ]
}



resource "aws_spot_instance_request" "spotinstance" {
  count=length(var.components)
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instanceTy
  spot_type = "persistent"
  block_duration_minutes = 30
  #instance_interruption_behaviour = "stop"
  vpc_security_group_ids = [ data.aws_security_group.selected.id ]

  tags = {
    Name = var.components[count.index]
  }
}
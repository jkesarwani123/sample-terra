
resource "aws_spot_instance_request" "spotinstance" {
  ami           = "ami-1234"
  instance_type = "t3.micro"
  spot_type = "persistent"
  block_duration_minutes = 30
  instance_interruption_behaviour = "stop"

  tags = {
    Name = "frontend"
  }
}
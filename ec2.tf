data "aws_ami" "ec2_latest" {
most_recent      = true
 owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel*"]
  }
  
}

resource "aws_instance" "myec2" {
    ami= data.aws_ami.ec2_latest.id
    instance_type= var.instance_type


  
}
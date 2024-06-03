#EC2 instance Creation
data "aws_ami" "latest_amazon_linux2" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023.1.20230809.0-kernel-6.1-x86_64"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "fazle-EC2-Public" {

  //count = 1

  ami           = data.aws_ami.latest_amazon_linux2.id
  subnet_id     = var.aws_subnet
  instance_type = "t2.micro"

  tags = {
    Name  = var.ec2-Name
    Owner = var.ec2-Owner
  }

}
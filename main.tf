module "ec2-module" {
  source = "./module-ec2"

  count = 3

  ec2-Name  = "Fazle-EC2-${count.index}"
  ec2-Owner = "Fazle"
  aws_subnet = aws_subnet.fazle-subnet.id
}
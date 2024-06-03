output "ec2-private-ip" {
  description = "This will show the ip of the EC2 instance"
  value       = aws_instance.fazle-EC2-Public.private_ip
}
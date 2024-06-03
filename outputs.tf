output "ec2-private-ip" {
  description = "Private ip of the EC2 instance"
  value       = join(",",module.ec2-module.*.ec2-private-ip)
}
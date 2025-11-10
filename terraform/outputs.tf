output "instance_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.monitor_server.public_ip
}

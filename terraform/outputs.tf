output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.monitoring.id
}

output "public_ip" {
  description = "Public IP of the monitoring server"
  value       = aws_eip.monitoring.public_ip
}

output "grafana_url" {
  description = "Grafana dashboard URL"
  value       = "http://${aws_eip.monitoring.public_ip}:3000"
}

output "prometheus_url" {
  description = "Prometheus URL"
  value       = "http://${aws_eip.monitoring.public_ip}:9090"
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh -i ${var.private_key_path} ubuntu@${aws_eip.monitoring.public_ip}"
}

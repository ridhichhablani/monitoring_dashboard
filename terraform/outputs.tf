output "jenkins_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "jenkins_url" {
  value = "http://${aws_instance.jenkins_server.public_ip}:8080"
}

output "grafana_url" {
  description = "Grafana URL"
  value       = "http://${aws_instance.jenkins_server.public_ip}:3000"
}

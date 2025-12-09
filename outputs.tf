output "vpc_id" { value = aws_vpc.main.id }
output "unicorn_ip" { value = aws_instance.web_a.public_ip }
output "jenkins_ip" { value = aws_instance.jenkins.public_ip }

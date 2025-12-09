output "vpc_id" { value = aws_vpc.main.id }
output "unicorn_ip" { value = aws_instance.web_a.public_ip }
output "jenkins_ip" { value = aws_instance.jenkins.public_ip }
output "connect_unicorn" { value = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.web_a.public_ip}" }

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "web_a" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public["ap-northeast-2a"].id 
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = { Name = "Unicorn Web Server" }
}
resource "aws_instance" "jenkins" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public["ap-northeast-2a"].id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = { Name = "Jenkins Server" }
}

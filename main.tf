provider "aws" {
  region = "us-west-2"  # Replace with your preferred region
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0abcdef1234567890"  # Replace with the desired AMI
  instance_type = "t2.medium"  # Adjust according to your needs
  key_name      = "your-key-name"  # Replace with your key pair
  security_groups = [aws_security_group.jenkins_sg.name]
  user_data = file("scripts/install_software.sh")

  tags = {
    Name = "JenkinsServer"
  }
}

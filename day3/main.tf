provider "aws" {
  region = "us-east-2"
  profile = "terraform"
}

resource "aws_instance" "web" {
  ami           = "ami-0fe18bc3cfa53a248"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "WebServer"
  }

    user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y apache2
              echo "Mi primer deploy en terraform!!" > /var/www/html/index.html
              systemctl enable apache2
              systemctl start apache2
              EOF
    
    user_data_replace_on_change = true
}

resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

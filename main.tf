

resource "aws_instance" "server1" {
  ami = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name = "kengni-key"

  tags = {
    Name = "Terraform server"
    Team = "DevOps"
    env = "dev"
  }
  user_data = file("install.sh")
}




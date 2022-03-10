provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "terraform_acloudguru"
  user_data     = "${file("commands.sh")}"
  tags = {
    Name = "web_ec2"
  }
}



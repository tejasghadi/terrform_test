provider "aws" {
  region     = "us-east-1"
  access_key = "$ACCESS_KEY"
  secret_key = "$SECRET_KEY"
}

resource "aws_instance" "web" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "terraform_acloudguru"
  tags = {
    Name = "web_ec2"
  }
}



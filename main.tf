# Provider configuration
provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

# Create a key pair (if you don't already have one)
# resource "aws_key_pair" "my_key" {
# key_name   = "my-key"
#  public_key = file("~/.ssh/id_rsa.pub") # Replace with your SSH public key file
# }

#Create a security group
 resource "aws_security_group" "my_sg" {
  name_prefix = "allow-ssh-"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }
 }

# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0e2c8caa4b6378d8c" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "aws-login"
  security_groups = [aws_security_group.my_sg.name]
  tags = {
    Name = "MyTerraformInstance"
  }
}

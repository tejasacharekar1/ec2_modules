provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "ec2_newrad" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  # monitoring  = true
  vpc_security_group_ids = var.vpcs
  subnet_id = var.subnet
   tags = {
    Name = var.Name
    Purpose = var.Purpose
    Owner = var.Owner
  }
    volume_tags = {
    Name = var.Name
    Purpose = var.Purpose
    Owner = var.Owner
  }

}

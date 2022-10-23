resource "aws_instance" "proxy1" {
  ami                         = var.instance_ami
  subnet_id                   = var.terraform_public_subnet1_id
  instance_type               = var.instance_type
  key_name                    = var.ssh_key
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  associate_public_ip_address = true

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "8"
    delete_on_termination = true
  }
 provisioner "local-exec" {
    command = "echo ${self.public_ip}"
 
  }
  tags = {
    Name = "proxy1"
  }
}


  resource "aws_instance" "proxy2" {
    ami                         = var.instance_ami
    subnet_id                   = var.terraform_public_subnet2_id
    instance_type               = var.instance_type
    key_name                    = var.ssh_key
    vpc_security_group_ids      = [var.vpc_security_group_ids]
    associate_public_ip_address = true

    root_block_device {
      volume_type           = "gp2"
      volume_size           = "8"
      delete_on_termination = true
    }

    provisioner "local-exec" {
      command = "echo ${self.public_ip}"
    }
    tags = {
      Name = "proxy2"
    }
}

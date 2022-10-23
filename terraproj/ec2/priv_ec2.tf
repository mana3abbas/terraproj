resource "aws_instance" "server1" {
  ami                         = var.instance_ami
  subnet_id                   = var.terraform_private_subnet_1_id
  instance_type               = var.instance_type
  key_name                    = var.ssh_key
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  associate_public_ip_address = false

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "7"
    delete_on_termination = true
  }


  tags = {
    Name = "server1"
  }

}


resource "aws_instance" "server2" {
  ami                         = var.instance_ami
  subnet_id                   = var.terraform_private_subnet_b_id
  instance_type               = var.instance_type
  key_name                    = var.ssh_key
  vpc_security_group_ids      = [var.vpc_security_group_ids]
  associate_public_ip_address = false

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "7"
    delete_on_termination = true
  }

  tags = {
    Name = "server2"
  }
   depends_on = [
     aws_nat_gateway.ngw
   ]
}

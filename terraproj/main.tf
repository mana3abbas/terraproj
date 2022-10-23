module "vpc" {
  source   = "./vpc"
  vpc_cidr = var.vpc_cidr

}

module "network" {
  source                 = "./network"
  public_subnet1_cidr   = var.pub_sub1_cidr
  public_subnet2_cidr   = var.pub_sub2_cidr
  private_subnet1_cidr  = var.priv_sub1_cidr
  private_subnet2_cidr  = var.priv_sub2cidr
  vpc_id                 = module.vpc.vpc_id
  availability_zone_id_1 = var.availability_zone_id_1
  availability_zone_id_2 = var.availability_zone_id_2
  depends_on             = [module.vpc]
}



module "ec2" {
  source                        = "./ec2"
  instance_ami                  = var.instance_ami
  terraform_private_subnet1_id = module.network.priv_sub1_id
  terraform_private_subnet2_id = module.network.priv_sub2_id
  terraform_public_subnet1_id  = module.network.pub_sub1_id
  terraform_public_subnet2_id  = module.network.pub_sub2_id
  instance_type                 = var.instance_type
  ssh_key                       = var.ssh_key
  vpc_security_group_ids        = module.securitygroups.security_group_id

  depends_on = [module.network]
}

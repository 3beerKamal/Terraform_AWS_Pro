module "pj1_netwok" {
  source = "/home/abeer/terraform_project1/Network"
  vpc_cidr = var.vpc_cidr
  public_subnet1_cidr = var.public_subnet1_cidr
  public_subnet2_cidr = var.public_subnet2_cidr
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet2_cidr = var.private_subnet2_cidr
  first_AZ = var.first_AZ
  second_AZ = var.second_AZ
}
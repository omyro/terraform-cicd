# root

module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./web"
  subnet = module.vpc.pb_subnet
  sg     = module.vpc.sg
}
provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/mahi-302/module.git.?ref=master2"
}
  module "B" {
    source = "git::https://github.com/mahi-302/module.git?ref=master"
    security_groups = var.security_groups
      target_group_arns = [module.A.TG_ARN]
 }
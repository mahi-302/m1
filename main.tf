provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/mahi-302/module.git.?ref=master"
}
  module "B" {
    source = "git::https://github.com/mahi-302/module.git?ref=master2"
      target_group_arns = module.A.TG_ARN
 }

provider "aws"{
  region = "us-east-2"
}
module "main"{
    source = "git::https://github.com/mahi-302/m1.git?ref=master2"
}
module "lb"{
    source = "git::https://github.com/mahi-302/m1.git?ref=main"
}
module "sg"{
    source = "git::https://github.com/mahi-302/m1.git?ref=master"
    target_group_arns = module.A.TG_ARN
}

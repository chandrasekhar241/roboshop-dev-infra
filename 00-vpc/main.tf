module "vpc" {
    source = "git::https://github.com/chandrasekhar241/terraform-aws-vpc.git"
    project = var.project
    environment = var.environment
}
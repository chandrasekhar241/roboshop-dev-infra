module "components" {
    for_each = var.components
    source = "git::https://https://github.com/chandrasekhar241/terraform-roboshop-modules.git?ref=main"
    environment = var.environment
    component = each.key
     app_version = each.value.app_version
}

variable "environment" {
    default = "dev"
}


variable "domain_name" {
    default = "daws90saws.shop"
  
}

variable "components" {
    default = {
        catalogue = {  
            app_version = "v3"
            

            
        }
    }
  
}
variable "zone_id" {
    default = "Z08591453NE7S2K54TI4E"
  
}

# variable "domain_name" {
#     default = "daws90saws.shop"
  
# }
# Here we should include clauses like the following, 
# it can also be splited into separated files to improve organization
## data
## variable
## locals

data "terraform_remote_state" "shared_services" {
  backend = "s3"

  config = {
    bucket = "hx-datainitiative-backend"
    key    = "shared_services/terraform.tfstate"
    region = var.aws_region
  }
}

variable "dynamic_variable" {
  type        = string
  description = "Test variable"
}

locals {
  hard_coded_variable = "hardcoded_name_or_variable"
  project_name        = "CHANGE THIS TO YOUR DESIRED PROJECT NAME"
  initiative          = "INITIATIVE YOU ARE WORKING ON"
  owner               = "YOUR NAME"
  manager             = "PERSON RESPONSBILE OF THE INITIATIVE"
  delete_protection   = "IF THE PLATFORM SHOULD BE DELETED OR NOT VALUES ARE true OR false"
}

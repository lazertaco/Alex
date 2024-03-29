variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 3.15"
    }
  }
}

provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    api_token = var.api_token
}

resource "okta_user_schema_property" "dob_extension" {
  index  = "date_of_birth_bitch"
  title  = "Date of Birth Bitch"
  type   = "string"
  master = "PROFILE_MASTER"
}

resource "okta_user" "Bitties" {
  first_name         = "Tig Ol"
  last_name          = "Bitties"
  login              = "tigol.bitties@gmail.com"
  email              = "tigol.bitties@gmail.com"
  city               = "Tig Town"
}

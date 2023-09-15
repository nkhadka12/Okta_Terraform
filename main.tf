terraform {  
  required_providers {
    okta = {
      source = "okta/okta"

    }


  }
}
provider "okta"{
    org_name = "dev-10812830"
    base_url = "okta.com"
    client_id = "0oab9bdzjkWEzsqkR5d7"
    scopes = ["okta.groups.manage"]
    private_key = "${path.module}/rsa.pem"

}

 cloud {
    organization = "TerraForm_Workshop12"
    workspaces {
      name = "Okta_Terraform"
    }
  }
resource "okta_group" "terra_group"{
  name = "Terra_Form_Group"
}

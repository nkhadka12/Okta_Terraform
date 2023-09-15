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
    private_key = "var.TF_VAR_private_key_path"
}
resource "okta_group" "terra_group1"{
  name = "Terra_Form_Group1"
}

terraform {
    required_providers {
        zpa = {
            version = "1.0.0"
            source = "terraform.d/plugins/linux_amd64"
        }
    }
}

provider "zpa" {}
terraform {
    required_providers {
        zpa = {
            version = "1.0.0"
            source = "github.com/willguibr/zpa_config"
        }
    }
}

provider "zpa" {}
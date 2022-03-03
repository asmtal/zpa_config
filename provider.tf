terraform {
  required_providers {
    zpa = {
      version = "2.0.6"
      source  = "zscaler.com/zpa/zpa"
    }
  }
  required_version = ">= 0.13"
}

provider "zpa" {}
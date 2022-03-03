// Access to SGIO Domain Controllers
resource "zpa_policy_access_rule" "as_domain_controllers" {
  name          = "SGIO Domain Controllers"
  description   = "SGIO Domain Controllers"
  action        = "ALLOW"
  rule_order    = 4
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
  app_server_groups {
    id = [zpa_server_group.sgio_domain_controllers.id]
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_domain_controllers.id
    }
    operands {
      object_type = "APP_GROUP"
      lhs         = "id"
      rhs         = zpa_segment_group.sgio_domain_controllers.id
    }
  }
}

// Access Policy for SIPA App Segment to O365
resource "zpa_policy_access_rule" "as_sipa_o365" {
  name          = "SGIO SIPA O365"
  description   = "SGIO SIPA O365"
  action        = "ALLOW"
  rule_order    = 5
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
  app_server_groups {
    id = [zpa_server_group.srv_sipa_o365.id]
  }
  conditions {
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_sipa_o365.id
    }
    operands {
      object_type = "APP_GROUP"
      lhs         = "id"
      rhs         = zpa_segment_group.sg_sipa_o365.id
    }
  }
    conditions {
    negated  = false
      operator = "OR"
      operands {
        object_type = "CLIENT_TYPE"
        lhs         = "id"
        rhs         = "zpn_client_type_ip_anchoring"
    }
  }
}

/*
// Access to Monitoring Servers
resource "zpa_policy_access_rule" "as_monitoring_servers" {
  name          = "SGIO Monitoring Servers"
  description   = "SGIO Monitoring Servers"
  action        = "ALLOW"
  rule_order    = 6
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_monitoring_servers.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.engineering.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}
*/
// Access to SSH Servers
resource "zpa_policy_access_rule" "as_ssh_servers" {
  name          = "SGIO SSH Servers"
  description   = "SGIO SSH Servers"
  action        = "ALLOW"
  rule_order    = 7
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_ssh_servers.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.engineering.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}

// Access to RDP Servers
resource "zpa_policy_access_rule" "as_rdp_servers" {
  name          = "SGIO RDP Servers"
  description   = "SGIO RDP Servers"
  action        = "ALLOW"
  rule_order    = 8
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_rdp_servers.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.engineering.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}

// Access to vCenter Server Rule
resource "zpa_policy_access_rule" "as_vcenter_servers" {
  name          = "SGIO vCenter Servers"
  description   = "SGIO vCenter Servers"
  action        = "ALLOW"
  rule_order    = 9
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_vcenter_servers.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.engineering.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}

// Access to Intranet Web Apps
resource "zpa_policy_access_rule" "as_intranet_web_apps" {
  name          = "SGIO Intranet Web Apps"
  description   = "SGIO Intranet Web Apps"
  action        = "ALLOW"
  rule_order    = 10
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_intranet_web_apps.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.engineering.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.sales.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.finance.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.executives.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}

// Browser Access Rule
resource "zpa_policy_access_rule" "browser_access_apps" {
  name          = "Browser Access Apps"
  description   = "Browser Access Apps"
  action        = "ALLOW"
  rule_order    = 11
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "CLIENT_TYPE"
      lhs         = "id"
      rhs         = "zpn_client_type_exporter"
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.sales.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.finance.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.executives.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}

// Access to all other Apps
resource "zpa_policy_access_rule" "aws_canada_cloud_connector" {
  name          = "AWS Canada Cloud Connector"
  description   = "AWS Canada Cloud Connector"
  action        = "ALLOW"
  rule_order    = 12
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  conditions {
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.all_other_services.id
    }
  }
  conditions {
    operator = "AND"
    operands {
      object_type = "EDGE_CONNECTOR_GROUP"
      lhs         = "id"
      rhs         = data.zpa_cloud_connector_group.zs-cc-vpc-096108eb5d9e68d71-ca-central-1a.id
    }
  }
}


// Access to all other Apps
resource "zpa_policy_access_rule" "all_other_services" {
  name          = "All Other Services"
  description   = "All Other Services"
  action        = "ALLOW"
  rule_order    = 13
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.access_policy.id
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
  app_server_groups {
    id = [zpa_server_group.all_other_services.id]
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.all_other_services.id
    }
    operands {
      object_type = "APP_GROUP"
      lhs         = "id"
      rhs         = zpa_segment_group.sg_all_other_services.id
    }
  }
}

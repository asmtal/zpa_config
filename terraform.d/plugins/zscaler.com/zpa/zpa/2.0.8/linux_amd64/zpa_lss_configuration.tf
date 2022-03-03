// Create Log Receiver Configuration
resource "zpa_lss_config_controller" "lss_app_connector_status" {
  config {
    name            = "LSS App Connector Status"
    description     = "LSS App Connector Status"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_ast_auth_log.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "11000"
    source_log_type = "zpn_ast_auth_log"
    use_tls         = true
    filter = [
      "ZPN_STATUS_AUTH_FAILED",
      "ZPN_STATUS_DISCONNECTED",
      "ZPN_STATUS_AUTHENTICATED"
    ]
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}

resource "zpa_lss_config_controller" "lss_user_activity" {
  config {
    name            = "LSS User Activity"
    description     = "LSS User Activity"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_trans_log.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "11001"
    source_log_type = "zpn_trans_log"
    use_tls         = true
  }
  policy_rule_resource {
    name   = "policy_rule_resource-lss_user_activity"
    action = "ALLOW"
    // policy_set_id = data.zpa_policy_type.lss_siem_policy.id
    conditions {
      negated  = false
      operator = "OR"
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_exporter"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_ip_anchoring"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_zapp"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_edge_connector"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_machine_tunnel"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_browser_isolation"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_slogger"]
      }
    }
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}

resource "zpa_lss_config_controller" "lss_audit_logs" {
  config {
    name            = "LSS Audit Logs"
    description     = "LSS Audit Logs"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_audit_log.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "10011"
    source_log_type = "zpn_audit_log"
    use_tls         = true
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}

resource "zpa_lss_config_controller" "lss_auth_logs" {
  config {
    name            = "LSS User Status"
    description     = "LSS User Status"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_auth_log.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "11001"
    source_log_type = "zpn_auth_log"
    use_tls         = true
  }
  policy_rule_resource {
    name   = "policy_rule_resource-lss_auth_logs"
    action = "ALLOW"
    // policy_set_id = data.zpa_policy_type.lss_siem_policy.id
    conditions {
      negated  = false
      operator = "OR"
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_exporter"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_ip_anchoring"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_zapp"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_edge_connector"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_machine_tunnel"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_browser_isolation"]
      }
      operands {
        object_type = "CLIENT_TYPE"
        values      = ["zpn_client_type_slogger"]
      }
    }
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}

resource "zpa_lss_config_controller" "lss_app_connector_metrics" {
  config {
    name            = "LSS App Connector Metrics"
    description     = "LSS App Connector Metrics"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_ast_comprehensive_stats.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "11002"
    source_log_type = "zpn_ast_comprehensive_stats"
    use_tls         = true
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}

resource "zpa_lss_config_controller" "lss_browser_access" {
  config {
    name            = "LSS Browser Access"
    description     = "LSS Browser Access"
    enabled         = true
    format          = data.zpa_lss_config_log_type_formats.zpn_http_trans_log.json
    lss_host        = "splunk.securitygeek.io"
    lss_port        = "10010"
    source_log_type = "zpn_http_trans_log"
    use_tls         = true
  }
  connector_groups {
    id = [zpa_app_connector_group.canada_lss_app_connector_group.id]
  }
}
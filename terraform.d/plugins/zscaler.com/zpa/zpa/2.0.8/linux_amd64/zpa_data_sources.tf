// Sales Browser Certificate
data "zpa_ba_certificate" "sales_ba" {
  name = "sales.securitygeek.io"
}

// Posture Profiles
data "zpa_posture_profile" "crwd_zta_score_40" {
  name = "CrowdStrike_ZPA_ZTA_40 (zscalerthree.net)"
}

data "zpa_posture_profile" "crwd_zta_score_80" {
  name = "CrowdStrike_ZPA_ZTA_80 (zscalerthree.net)"
}

data "zpa_posture_profile" "crwd_zpa_pre_zta" {
  name = "CrowdStrike_ZPA_Pre-ZTA (zscalerthree.net)"
}

// Trusted Networks
data "zpa_trusted_network" "corp_trusted_networks" {
  name = "Corp-Trusted-Networks (zscalerthree.net)"
}

// Retrieve Policy Types
data "zpa_policy_type" "access_policy" {
    policy_type = "ACCESS_POLICY"
}

data "zpa_policy_type" "timeout_policy" {
    policy_type = "TIMEOUT_POLICY"
}

data "zpa_policy_type" "client_forwarding_policy" {
    policy_type = "CLIENT_FORWARDING_POLICY"
}

data "zpa_policy_type" "lss_siem_policy" {
    policy_type = "SIEM_POLICY"
}

// Okta IDP Controller
data "zpa_idp_controller" "sgio_user_okta" {
  name = "SGIO-User-Okta"
}

// Okta IDP Saml Attribute
data "zpa_saml_attribute" "email_sgio_user_sso" {
  name = "Email_SGIO-User-Okta"
}

// Okta IDP SCIM Groups
data "zpa_scim_groups" "engineering" {
  name     = "Engineering"
  idp_name = "SGIO-User-Okta"
}

data "zpa_scim_groups" "sales" {
  name     = "Sales"
  idp_name = "SGIO-User-Okta"
}

data "zpa_scim_groups" "executives" {
  name     = "Executives"
  idp_name = "SGIO-User-Okta"
}

data "zpa_scim_groups" "finance" {
  name     = "Finance"
  idp_name = "SGIO-User-Okta"
}

data "zpa_scim_groups" "contractors" {
  name     = "Contractors"
  idp_name = "SGIO-User-Okta"
}

// LSS Configuration

data "zpa_lss_config_log_type_formats" "zpn_trans_log" {
  log_type = "zpn_trans_log"
}

data "zpa_lss_config_log_type_formats" "zpn_ast_auth_log" {
  log_type = "zpn_ast_auth_log"
}

data "zpa_lss_config_log_type_formats" "zpn_audit_log" {
  log_type = "zpn_audit_log"
}

data "zpa_lss_config_log_type_formats" "zpn_auth_log" {
  log_type = "zpn_auth_log"
}

data "zpa_lss_config_log_type_formats" "zpn_http_trans_log" {
  log_type = "zpn_http_trans_log"
}

data "zpa_lss_config_log_type_formats" "zpn_ast_comprehensive_stats" {
  log_type = "zpn_ast_comprehensive_stats"
}

data "zpa_enrollment_cert" "connector" {
    name = "Connector"
}

data "zpa_enrollment_cert" "service_edge" {
    name = "Service Edge"
}

data "zpa_cloud_connector_group" "zs-cc-vpc-096108eb5d9e68d71-ca-central-1a" {
  name = "zs-cc-vpc-096108eb5d9e68d71-ca-central-1a"
}



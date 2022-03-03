// Creating Segment Groups
resource "zpa_segment_group" "sg_all_other_services" {
  name            = "All Other Services"
  description     = "All Other Services"
  enabled         = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_sgio_browser_access" {
  name            = "Browser Access Apps"
  description     = "Browser Access Apps"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_sgio_devops" {
  name            = "SGIO DevOps Servers"
  description     = "SGIO DevOps Servers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_sgio_intranet_web_apps" {
  name            = "SGIO Intranet Web Apps"
  description     = "SGIO Intranet Web Apps"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_sgio_vcenter_servers" {
  name            = "SGIO vCenter Servers"
  description     = "SGIO vCenter Servers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_monitoring_servers" {
  name            = "SGIO Monitoring Servers"
  description     = "SGIO Monitoring Servers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_rdp_servers" {
  name            = "SGIO RDP Servers"
  description     = "SGIO RDP Servers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_ssh_servers" {
  name            = "SGIO SSH Servers"
  description     = "SGIO SSH Servers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sgio_domain_controllers" {
  name            = "SGIO Domain Controllers"
  description     = "SGIO Domain Controllers"
  enabled          = true
policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sgio_byod_access" {
  name            = "SGIO BYOD Access"
  description     = "SGIO BYOD Access"
  enabled          = true
  policy_migrated = true
  tcp_keep_alive_enabled = "1"
}

resource "zpa_segment_group" "sg_sipa_o365" {
  name            = "SGIO SIPA O365"
  description     = "SGIO SIPA O365"
  enabled          = true
  policy_migrated = true
  tcp_keep_alive_enabled = "1"
}
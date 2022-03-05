// Creating Application Segments
resource "zpa_application_segment" "all_other_services" {
  name             = "All Other Services"
  description      = "All Other Services"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["88", "88", "135", "135", "139", "139", "445", "445", "464", "464", "3268", "3269"]
  udp_port_ranges  = ["88", "88", "138", "138", "389", "389", "445", "445", "464", "464"]
  domain_names     = ["*.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_all_other_services.id
  server_groups {
    id = [zpa_server_group.all_other_services.id]
  }
}

resource "zpa_application_segment" "as_vcenter_servers" {
  name             = "SGIO vCenter Servers"
  description      = "SGIO vCenter Servers"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["443", "443", "22", "22"]
  domain_names     = ["vcenter.securitygeek.io", "cahlesx01.securitygeek.io", "cahlesx02.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_sgio_vcenter_servers.id
  server_groups {
    id = [zpa_server_group.sgio_vcenter_servers.id]
  }
}

resource "zpa_application_segment" "as_intranet_web_apps" {
  name             = "SGIO Intranet Web Apps"
  description      = "SGIO Intranet Web Apps"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["intranet.securitygeek.io", "qa.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_sgio_intranet_web_apps.id
  server_groups {
    id = [zpa_server_group.sgio_intranet_web_apps.id]
  }
}

resource "zpa_application_segment" "as_rdp_servers" {
  name             = "SGIO RDP Servers"
  description      = "SGIO RDP Servers"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["3389", "3389"]
  domain_names     = ["rdp125.securitygeek.io", "rdp126.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_rdp_servers.id
  server_groups {
    id = [zpa_server_group.sgio_rdp_servers.id]
  }
}

resource "zpa_application_segment" "as_monitoring_servers" {
  name             = "SGIO Monitoring Servers"
  description      = "SGIO Monitoring Servers"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["8000", "8000", "22", "22"]
  domain_names     = ["splunk.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_monitoring_servers.id
  server_groups {
    id = [zpa_server_group.sgio_monitoring_servers.id]
  }
}

resource "zpa_application_segment" "as_ssh_servers" {
  name             = "SGIO SSH Servers"
  description      = "SGIO SSH Servers"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["22", "22"]
  domain_names     = ["ssh.securitygeek.io", "research.securitygeek.io", "trafficgen.securitygeek.io"]
  segment_group_id = zpa_segment_group.sg_ssh_servers.id
  server_groups {
    id = [zpa_server_group.sgio_ssh_servers.id]
  }
}

resource "zpa_application_segment" "as_domain_controllers" {
  name             = "SGIO Domain Controllers"
  description      = "SGIO Domain Controllers"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["88", "88", "135", "135", "139", "139", "389", "389", "445", "445", "464", "464", "3268", "3269", "49152", "65535"]
  udp_port_ranges  = ["88", "88", "123", "123", "389", "389", "445", "445", "464", "464"]
  domain_names     = ["vcd125-ad01.securitygeek.io", "vcd125-ad01"]
  segment_group_id = zpa_segment_group.sgio_domain_controllers.id
  server_groups {
    id = [zpa_server_group.sgio_domain_controllers.id]
  }
}

resource "zpa_application_segment" "as_browser_isolation_byod" {
  name             = "SGIO Browser Isolation BYOD Access"
  description      = "SGIO Browser Isolation BYOD Access"
  enabled          = true
  health_reporting = "ON_ACCESS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["80", "80"]
  domain_names     = ["sales-byod.securitygeek.io", "intranet-byod.securitygeek.io", "qa-byod.securitygeek.io"]
  segment_group_id = zpa_segment_group.sgio_byod_access.id
  server_groups {
    id = [zpa_server_group.all_other_services.id]
  }
}

resource "zpa_application_segment" "as_sipa_o365" {
  name             = "SGIO SIPA O365"
  description      = "SGIO SIPA O365"
  enabled          = true
  ip_anchored     =  true
  health_reporting = "CONTINUOUS"
  bypass_type      = "NEVER"
  icmp_access_type = "PING"
  is_cname_enabled = true
  tcp_port_ranges  = ["443", "443"]
  domain_names     = ["login.microsoftonline.com"]
  segment_group_id = zpa_segment_group.sg_sipa_o365.id
  server_groups {
    id = [zpa_server_group.srv_sipa_o365.id]
  }
}
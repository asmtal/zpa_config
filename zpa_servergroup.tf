// Creating Server Groups
resource "zpa_server_group" "all_other_services" {
  name              = "All Other Services"
  description       = "All Other Services"
  enabled           = true
  dynamic_discovery = true
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

// Creating Server Groups
resource "zpa_server_group" "sgio_domain_controllers" {
  name              = "SGIO Domain Controllers"
  description       = "SGIO Domain Controllers"
  enabled          = true
  dynamic_discovery = true
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "browser_access_apps" {
  name              = "Browser Access Apps"
  description       = "Browser Access Apps"
  enabled          = true
  dynamic_discovery = false
  servers {
    id = [
      zpa_application_server.sales.id,
    ]
  }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "sgio_intranet_web_apps" {
  name              = "SGIO Intranet Web Apps"
  description       = "SGIO Intranet Web Apps"
  enabled          = true
  dynamic_discovery = false
  servers {
    id = [
      zpa_application_server.intranet.id,
      zpa_application_server.qa.id,
      zpa_application_server.sales_internal.id
    ]
  }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "sgio_vcenter_servers" {
  name              = "SGIO vCenter Servers"
  description       = "SGIO vCenter Servers"
  enabled          = true
  dynamic_discovery = true
  // servers {
  //   id = [
  //     zpa_application_server.vcenter.id,
  //     zpa_application_server.cahlesx01.id,
  //     zpa_application_server.cahlesx02.id
  //   ]
  // }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "sgio_monitoring_servers" {
  name              = "SGIO Monitoring Servers"
  description       = "SGIO Monitoring Servers"
  enabled          = true
  dynamic_discovery = true
  // servers {
  //   id = [ zpa_application_server.splunk.id, zpa_application_server.nss128.id ]
  // }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "sgio_rdp_servers" {
  name              = "SGIO RDP Servers"
  description       = "SGIO RDP Servers"
  enabled          = true
  dynamic_discovery = true
  // servers {
  //   id = [ zpa_application_server.rdp125.id, zpa_application_server.rdp126.id]
  // }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "sgio_ssh_servers" {
  name              = "SGIO SSH Servers"
  description       = "SGIO SSH Servers"
  enabled          = true
  dynamic_discovery = true
  // servers {
  //   id = [ zpa_application_server.trafficgen.id,
  //         zpa_application_server.zpa131.id]
  // }
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}

resource "zpa_server_group" "srv_sipa_o365" {
  name              = "SGIO SIPA O365"
  description       = "SGIO SIPA O365"
  enabled          = true
  dynamic_discovery = true
  app_connector_groups {
    id = [zpa_app_connector_group.canada_app_connector_group.id]
  }
}
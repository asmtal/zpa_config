resource "zpa_provisioning_key" "canada_app_connector_group" {
    name                     = "Canada Connector Group"
    association_type         = "CONNECTOR_GRP"
    enabled                  = true
    enrollment_cert_id       = data.zpa_enrollment_cert.connector.id
    max_usage                = "2"
    zcomponent_id            = zpa_app_connector_group.canada_app_connector_group.id
}

resource "zpa_provisioning_key" "canada_lss_app_connector_group" {
    name                     = "Canada LSS Connector Group"
    association_type         = "CONNECTOR_GRP"
    enabled                  = true
    enrollment_cert_id       = data.zpa_enrollment_cert.connector.id
    max_usage                = "2"
    zcomponent_id            = zpa_app_connector_group.canada_lss_app_connector_group.id
}

resource "zpa_provisioning_key" "usa_app_connector_group" {
    name                     = "USA App Connector Group"
    association_type         = "CONNECTOR_GRP"
    enabled                  = true
    enrollment_cert_id       = data.zpa_enrollment_cert.connector.id
    max_usage                = "2"
    zcomponent_id            = zpa_app_connector_group.usa_app_connector_group.id
}

resource "zpa_provisioning_key" "seg01_vancouver" {
    association_type         = "SERVICE_EDGE_GRP"
    enabled                  = true
    enrollment_cert_id       = data.zpa_enrollment_cert.service_edge.id
    max_usage                = "2"
    name                     = "SGIO-VAN-Service-Edge-Group"
    zcomponent_id            = zpa_service_edge_group.seg01_vancouver.id
}

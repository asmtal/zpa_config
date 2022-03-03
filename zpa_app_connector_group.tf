resource "zpa_app_connector_group" "canada_app_connector_group" {
    name                     = "Canada App Connector Group"
    description              = "Canada App Connector Group"
    country_code             = "CA"
    dns_query_type           = "IPV4"
    enabled                  = true
    latitude                 = "49.1041779"
    location                 = "Langley City, BC, Canada"
    longitude                = "-122.6603519"
    lss_app_connector_group  = false
    override_version_profile = true
    upgrade_day              = "SUNDAY"
    upgrade_time_in_secs     = "66600"
    version_profile_id       = "2"
}

resource "zpa_app_connector_group" "canada_lss_app_connector_group" {
    name                     = "Canada LSS App Connector Group"
    description              = "Canada LSS App Connector Group"
    //city_country             = "Langley, CA"
    country_code             = "CA"
    dns_query_type           = "IPV4"
    enabled                  = true
    latitude                 = "49.1041779"
    location                 = "Langley City, BC, Canada"
    longitude                = "-122.6603519"
    lss_app_connector_group  = true
    upgrade_day              = "SUNDAY"
    upgrade_time_in_secs     = "66600"
    override_version_profile = true
    version_profile_id       = "2"
}

resource "zpa_app_connector_group" "usa_app_connector_group" {
  name                     = "USA App Connector Group"
  description              = "USA App Connector Group"
  enabled                  = true
  country_code             = "US"
  dns_query_type           = "IPV4"
  latitude                 = "37.3382082"
  longitude                = "-121.8863286"
  location                 = "San Jose, CA, USA"
  upgrade_day              = "SUNDAY"
  upgrade_time_in_secs     = "66600"
  override_version_profile = true
  version_profile_id       = "2"
}

resource "zpa_app_connector_group" "ansible_app_connector_test" {
  name                     = "Dummy App Connector Group"
  description              = "Dummy App Connector Group for integration test"
  enabled                  = true
  country_code             = "US"
  dns_query_type           = "IPV4"
  latitude                 = "37.3382082"
  longitude                = "-121.8863286"
  location                 = "San Jose, CA, USA"
  upgrade_day              = "SUNDAY"
  upgrade_time_in_secs     = "66600"
  override_version_profile = true
  version_profile_id       = "2"
}
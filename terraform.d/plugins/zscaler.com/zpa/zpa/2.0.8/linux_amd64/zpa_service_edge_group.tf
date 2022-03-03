resource "zpa_service_edge_group" "seg01_vancouver" {
  name                 = "Canada Service Edge Group"
  description          = "Canada Service Edge Group"
  upgrade_day          = "SUNDAY"
  upgrade_time_in_secs = "66600"
  latitude             = "49.1041779"
  longitude            = "-122.6603519"
  location             = "Langley City, BC, Canada"
  override_version_profile = true
  version_profile_id   = "2"
  trusted_networks {
    id = [data.zpa_trusted_network.corp_trusted_networks.id]
  }
}
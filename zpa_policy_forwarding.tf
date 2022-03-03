// // Access to DevOps Servers
// resource "zpa_policy_forwarding_rule" "as_sipa_o365" {
//   name          = "SGIO SIPA O365"
//   description   = "SGIO SIPA O365"
//   action        = "INTERCEPT_ACCESSIBLE"
//   rule_order    = 1
//   operator      = "AND"
//   policy_set_id = data.zpa_policy_type.client_forwarding_policy.id

//   conditions {
//     negated  = false
//     operator = "OR"
//     operands {
//       name        = "SGIO SIPA O365"
//       object_type = "APP"
//       lhs         = "id"
//       rhs         = zpa_application_segment.as_sipa_o365.id
//     }
//     operands {
//       object_type = "APP_GROUP"
//       lhs         = "id"
//       rhs         = zpa_segment_group.sg_sipa_o365.id
//     }
//   }
// }

// Access to DevOps Servers
resource "zpa_policy_forwarding_rule" "sgio_byod_access_bypass" {
  name          = "SGIO BYOD Access"
  description   = "SGIO BYOD Access"
  action        = "BYPASS"
  rule_order    = 2
  operator      = "AND"
  policy_set_id = data.zpa_policy_type.client_forwarding_policy.id

  conditions {
    negated  = false
    operator = "OR"
    operands {
      name        = "SGIO Browser Isolation BYOD Access"
      object_type = "APP"
      lhs         = "id"
      rhs         = zpa_application_segment.as_browser_isolation_byod.id
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "POSTURE"
      lhs         = data.zpa_posture_profile.crwd_zpa_pre_zta.posture_udid
      rhs         = false
    }
  }
  conditions {
    negated  = false
    operator = "OR"
    operands {
      object_type = "SCIM_GROUP"
      lhs         = data.zpa_idp_controller.sgio_user_okta.id
      rhs         = data.zpa_scim_groups.contractors.id
      idp_id      = data.zpa_idp_controller.sgio_user_okta.id
    }
  }
}
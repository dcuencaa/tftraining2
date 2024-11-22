// Get all
 data "akamai_group" "akamai_ps" {
     group_name = "Akamai Professional Services-1-1NC95D"
     contract_id = "ctr_1-1NC95D"
 }

#grp_19293

output "akamai_ps" {
  value = data.akamai_group.akamai_ps
}

data "akamai_appsec_configuration" "dc_waf" {
    name = "dcuenc_waf"
}

output "dc_waf" {
  value = data.akamai_appsec_configuration.dc_waf
}

data "akamai_property" "dc_property" {
    name = "dcuenc_ion"
    version = "129"
}

output "my_property" {
  value = data.akamai_property.dc_property
}
output "iot_digital_twin_model_spec_lookup_id" {
  description = "Map of id values across all iot_digital_twin_model_spec_lookup, keyed the same as var.iot_digital_twin_model_spec_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_iot_digital_twin_model_spec.iot_digital_twin_model_spec_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_digital_twin_model_spec_lookup_digital_twin_model_id" {
  description = "Map of digital_twin_model_id values across all iot_digital_twin_model_spec_lookup, keyed the same as var.iot_digital_twin_model_spec_lookup except keys with no digital_twin_model_id are omitted"
  value       = { for k, v in data.oci_iot_digital_twin_model_spec.iot_digital_twin_model_spec_lookup : k => v.digital_twin_model_id if v.digital_twin_model_id != null && length(v.digital_twin_model_id) > 0 }
}


data "oci_iot_digital_twin_model_spec" "iot_digital_twin_model_spec_lookup" {
  for_each = var.iot_digital_twin_model_spec_lookup

  digital_twin_model_id = each.value.digital_twin_model_id
}


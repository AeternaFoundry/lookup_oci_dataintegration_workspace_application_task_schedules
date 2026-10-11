data "oci_dataintegration_workspace_application_task_schedules" "dataintegration_workspace_application_task_schedules_lookup" {
  for_each = var.dataintegration_workspace_application_task_schedules_lookup

  application_key = each.value.application_key
  workspace_id    = each.value.workspace_id
  identifier      = each.value.identifier
  is_enabled      = each.value.is_enabled
  key             = each.value.key
  name            = each.value.name
  type            = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


output "dataintegration_workspace_application_task_schedules_lookup_id" {
  description = "Map of id values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_application_key" {
  description = "Map of application_key values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no application_key are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.application_key if v.application_key != null && length(v.application_key) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_filter" {
  description = "Map of filter values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_identifier" {
  description = "Map of identifier values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no identifier are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_is_enabled" {
  description = "Map of is_enabled values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no is_enabled are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.is_enabled if v.is_enabled != null }
}
output "dataintegration_workspace_application_task_schedules_lookup_key" {
  description = "Map of key values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no key are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.key if v.key != null && length(v.key) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_name" {
  description = "Map of name values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_task_schedule_summary_collection" {
  description = "Map of task_schedule_summary_collection values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no task_schedule_summary_collection are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.task_schedule_summary_collection if v.task_schedule_summary_collection != null && length(v.task_schedule_summary_collection) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_type" {
  description = "Map of type values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no type are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}
output "dataintegration_workspace_application_task_schedules_lookup_workspace_id" {
  description = "Map of workspace_id values across all dataintegration_workspace_application_task_schedules_lookup, keyed the same as var.dataintegration_workspace_application_task_schedules_lookup except keys with no workspace_id are omitted"
  value       = { for k, v in data.oci_dataintegration_workspace_application_task_schedules.dataintegration_workspace_application_task_schedules_lookup : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}


variable "dataintegration_workspace_application_task_schedules_lookup" {
  description = <<EOT
Map of dataintegration_workspace_application_task_schedules_lookup, attributes below
Required:
    - application_key
    - workspace_id
Optional:
    - identifier
    - is_enabled
    - key
    - name
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    application_key = string
    workspace_id    = string
    identifier      = optional(list(string))
    is_enabled      = optional(bool)
    key             = optional(list(string))
    name            = optional(string)
    type            = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_application_task_schedules_lookup : (
        alltrue([for item in v.task_schedule_summary_collection : (item.items == null || alltrue([for item in item.items : (item.schedule_ref == null || alltrue([for item in item.schedule_ref : (item.frequency_details == null || alltrue([for item in item.frequency_details : (item.model_type == null || (contains([for v in ["CUSTOM", "DAILY", "HOURLY", "MONTHLY", "MONTHLY_RULE", "WEEKLY"] : lower(v)], lower(item.model_type))))]))]))]))])
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"DAILY\", \"HOURLY\", \"MONTHLY\", \"MONTHLY_RULE\", \"WEEKLY\""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


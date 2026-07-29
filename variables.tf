variable "kusto_attached_database_configurations" {
  description = <<EOT
Map of kusto_attached_database_configurations, attributes below
Required:
    - cluster_id
    - cluster_name
    - database_name
    - location
    - name
    - resource_group_name
Optional:
    - database_name_override
    - database_name_prefix
    - default_principal_modification_kind
    - sharing (block):
        - external_tables_to_exclude (optional)
        - external_tables_to_include (optional)
        - functions_to_exclude (optional)
        - functions_to_include (optional)
        - materialized_views_to_exclude (optional)
        - materialized_views_to_include (optional)
        - tables_to_exclude (optional)
        - tables_to_include (optional)
EOT

  type = map(object({
    cluster_id                          = string
    cluster_name                        = string
    database_name                       = string
    location                            = string
    name                                = string
    resource_group_name                 = string
    database_name_override              = optional(string)
    database_name_prefix                = optional(string)
    default_principal_modification_kind = optional(string)
    sharing = optional(object({
      external_tables_to_exclude    = optional(set(string))
      external_tables_to_include    = optional(set(string))
      functions_to_exclude          = optional(set(string))
      functions_to_include          = optional(set(string))
      materialized_views_to_exclude = optional(set(string))
      materialized_views_to_include = optional(set(string))
      tables_to_exclude             = optional(set(string))
      tables_to_include             = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        length(v.name) <= 40
      )
    ])
    error_message = "[from validate.DataConnectionName: invalid when len(value) > 40]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        v.database_name_override == null || (length(v.database_name_override) <= 260)
      )
    ])
    error_message = "[from validate.DatabaseName: invalid when len(value) > 260]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_attached_database_configurations : (
        v.database_name_prefix == null || (length(v.database_name_prefix) <= 260)
      )
    ])
    error_message = "[from validate.DatabaseName: invalid when len(value) > 260]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


variable "kusto_attached_database_configurations" {
  description = <<EOT
Map of kusto_attached_database_configurations, attributes below
Required:
    - cluster_name
    - database_name
    - location
    - name
    - resource_group_name
Optional:
    - cluster_id
    - cluster_resource_id
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
    cluster_name                        = string
    database_name                       = string
    location                            = string
    name                                = string
    resource_group_name                 = string
    cluster_id                          = optional(string)
    cluster_resource_id                 = optional(string)
    database_name_override              = optional(string)
    database_name_prefix                = optional(string)
    default_principal_modification_kind = optional(string) # Default: "None"
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
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_attached_database_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataConnectionName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: name
  #   source:    [from validate.DataConnectionName] !regexp.MustCompile(`^[a-zA-Z0-9\s.-]+$`).MatchString(name)
  # path: name
  #   condition: length(value) <= 40
  #   message:   [from validate.DataConnectionName: invalid when len(value) > 40]
  #   source:    [from validate.DataConnectionName: invalid when len(value) > 40]
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cluster_name
  #   source:    [from validate.ClusterName] !regexp.MustCompile(`^[a-z][a-z0-9\-]+$`).MatchString(name)
  # path: cluster_name
  #   source:    [from validate.ClusterName] len(name) < 4 || len(name) > 22
  # path: database_name
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: cluster_id
  #   source:    [from commonids.ValidateKustoClusterID] !ok
  # path: cluster_id
  #   source:    [from commonids.ValidateKustoClusterID] err != nil
  # path: database_name_override
  #   source:    [from validate.DatabaseName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: database_name_override
  #   source:    [from validate.DatabaseName] !regexp.MustCompile(`^[a-zA-Z0-9\s._-]+$`).MatchString(name)
  # path: database_name_override
  #   condition: length(value) <= 260
  #   message:   [from validate.DatabaseName: invalid when len(value) > 260]
  #   source:    [from validate.DatabaseName: invalid when len(value) > 260]
  # path: database_name_prefix
  #   source:    [from validate.DatabaseName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: database_name_prefix
  #   source:    [from validate.DatabaseName] !regexp.MustCompile(`^[a-zA-Z0-9\s._-]+$`).MatchString(name)
  # path: database_name_prefix
  #   condition: length(value) <= 260
  #   message:   [from validate.DatabaseName: invalid when len(value) > 260]
  #   source:    [from validate.DatabaseName: invalid when len(value) > 260]
  # path: default_principal_modification_kind
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}


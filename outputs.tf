output "kusto_attached_database_configurations_id" {
  description = "Map of id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kusto_attached_database_configurations_attached_database_names" {
  description = "Map of attached_database_names values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.attached_database_names if v.attached_database_names != null && length(v.attached_database_names) > 0 }
}
output "kusto_attached_database_configurations_cluster_id" {
  description = "Map of cluster_id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "kusto_attached_database_configurations_cluster_name" {
  description = "Map of cluster_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "kusto_attached_database_configurations_cluster_resource_id" {
  description = "Map of cluster_resource_id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_resource_id if v.cluster_resource_id != null && length(v.cluster_resource_id) > 0 }
}
output "kusto_attached_database_configurations_database_name" {
  description = "Map of database_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "kusto_attached_database_configurations_database_name_override" {
  description = "Map of database_name_override values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name_override if v.database_name_override != null && length(v.database_name_override) > 0 }
}
output "kusto_attached_database_configurations_database_name_prefix" {
  description = "Map of database_name_prefix values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name_prefix if v.database_name_prefix != null && length(v.database_name_prefix) > 0 }
}
output "kusto_attached_database_configurations_default_principal_modification_kind" {
  description = "Map of default_principal_modification_kind values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.default_principal_modification_kind if v.default_principal_modification_kind != null && length(v.default_principal_modification_kind) > 0 }
}
output "kusto_attached_database_configurations_location" {
  description = "Map of location values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "kusto_attached_database_configurations_name" {
  description = "Map of name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kusto_attached_database_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "kusto_attached_database_configurations_sharing" {
  description = "Map of sharing values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => one(v.sharing) if v.sharing != null && length(v.sharing) > 0 }
}


output "kusto_attached_database_configurations_id" {
  description = "Map of id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.id }
}
output "kusto_attached_database_configurations_attached_database_names" {
  description = "Map of attached_database_names values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.attached_database_names }
}
output "kusto_attached_database_configurations_cluster_id" {
  description = "Map of cluster_id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_id }
}
output "kusto_attached_database_configurations_cluster_name" {
  description = "Map of cluster_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_name }
}
output "kusto_attached_database_configurations_cluster_resource_id" {
  description = "Map of cluster_resource_id values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.cluster_resource_id }
}
output "kusto_attached_database_configurations_database_name" {
  description = "Map of database_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name }
}
output "kusto_attached_database_configurations_database_name_override" {
  description = "Map of database_name_override values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name_override }
}
output "kusto_attached_database_configurations_database_name_prefix" {
  description = "Map of database_name_prefix values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.database_name_prefix }
}
output "kusto_attached_database_configurations_default_principal_modification_kind" {
  description = "Map of default_principal_modification_kind values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.default_principal_modification_kind }
}
output "kusto_attached_database_configurations_location" {
  description = "Map of location values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.location }
}
output "kusto_attached_database_configurations_name" {
  description = "Map of name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.name }
}
output "kusto_attached_database_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.resource_group_name }
}
output "kusto_attached_database_configurations_sharing" {
  description = "Map of sharing values across all kusto_attached_database_configurations, keyed the same as var.kusto_attached_database_configurations"
  value       = { for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : k => v.sharing }
}


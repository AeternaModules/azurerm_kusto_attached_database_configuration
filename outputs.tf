output "kusto_attached_database_configurations" {
  description = "All kusto_attached_database_configuration resources"
  value       = azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations
}
output "kusto_attached_database_configurations_attached_database_names" {
  description = "List of attached_database_names values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.attached_database_names]
}
output "kusto_attached_database_configurations_cluster_id" {
  description = "List of cluster_id values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.cluster_id]
}
output "kusto_attached_database_configurations_cluster_name" {
  description = "List of cluster_name values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.cluster_name]
}
output "kusto_attached_database_configurations_cluster_resource_id" {
  description = "List of cluster_resource_id values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.cluster_resource_id]
}
output "kusto_attached_database_configurations_database_name" {
  description = "List of database_name values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.database_name]
}
output "kusto_attached_database_configurations_database_name_override" {
  description = "List of database_name_override values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.database_name_override]
}
output "kusto_attached_database_configurations_database_name_prefix" {
  description = "List of database_name_prefix values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.database_name_prefix]
}
output "kusto_attached_database_configurations_default_principal_modification_kind" {
  description = "List of default_principal_modification_kind values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.default_principal_modification_kind]
}
output "kusto_attached_database_configurations_location" {
  description = "List of location values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.location]
}
output "kusto_attached_database_configurations_name" {
  description = "List of name values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.name]
}
output "kusto_attached_database_configurations_resource_group_name" {
  description = "List of resource_group_name values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.resource_group_name]
}
output "kusto_attached_database_configurations_sharing" {
  description = "List of sharing values across all kusto_attached_database_configurations"
  value       = [for k, v in azurerm_kusto_attached_database_configuration.kusto_attached_database_configurations : v.sharing]
}


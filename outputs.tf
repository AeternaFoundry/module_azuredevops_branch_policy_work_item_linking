output "branch_policy_work_item_linkings_id" {
  description = "Map of id values across all branch_policy_work_item_linkings, keyed the same as var.branch_policy_work_item_linkings"
  value       = { for k, v in azuredevops_branch_policy_work_item_linking.branch_policy_work_item_linkings : k => v.id }
}
output "branch_policy_work_item_linkings_blocking" {
  description = "Map of blocking values across all branch_policy_work_item_linkings, keyed the same as var.branch_policy_work_item_linkings"
  value       = { for k, v in azuredevops_branch_policy_work_item_linking.branch_policy_work_item_linkings : k => v.blocking }
}
output "branch_policy_work_item_linkings_enabled" {
  description = "Map of enabled values across all branch_policy_work_item_linkings, keyed the same as var.branch_policy_work_item_linkings"
  value       = { for k, v in azuredevops_branch_policy_work_item_linking.branch_policy_work_item_linkings : k => v.enabled }
}
output "branch_policy_work_item_linkings_project_id" {
  description = "Map of project_id values across all branch_policy_work_item_linkings, keyed the same as var.branch_policy_work_item_linkings"
  value       = { for k, v in azuredevops_branch_policy_work_item_linking.branch_policy_work_item_linkings : k => v.project_id }
}
output "branch_policy_work_item_linkings_settings" {
  description = "Map of settings values across all branch_policy_work_item_linkings, keyed the same as var.branch_policy_work_item_linkings"
  value       = { for k, v in azuredevops_branch_policy_work_item_linking.branch_policy_work_item_linkings : k => one(v.settings) }
}


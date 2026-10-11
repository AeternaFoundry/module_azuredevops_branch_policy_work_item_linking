resource "azuredevops_branch_policy_work_item_linking" "branch_policy_work_item_linkings" {
  for_each = var.branch_policy_work_item_linkings

  project_id = each.value.project_id
  blocking   = each.value.blocking
  enabled    = each.value.enabled

  settings {
    dynamic "scope" {
      for_each = each.value.settings.scope
      content {
        match_type     = scope.value.match_type
        repository_id  = scope.value.repository_id
        repository_ref = scope.value.repository_ref
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}


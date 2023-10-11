resource "null_resource" "inside_module" {
}

check "check_causes_panic" {
  assert {
    # This panics because the DAG does not seem to properly register
    # dependencies when a check is in a module on re-applies.
    condition     = null_resource.inside_module.id != null
    error_message = "condition violated"
  }
}

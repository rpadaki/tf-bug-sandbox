variable "inputs" {
  type = map(string)
}

data "null_data_source" "b" {
  inputs = var.inputs
}

check "check" {
  assert {
    condition     = length(data.null_data_source.b.outputs) == 2
    error_message = "check block: not enough stuff in b"
  }
}

/**
 * To break this, run the following commands:
 *   terraform init
 *   terraform apply
 *   terraform apply
 * The first `terraform apply` will succeed, but the second panics.
 */


module "module_check_causes_panic" {
  source = "./module"
}

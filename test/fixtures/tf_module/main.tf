variable project_id{

}
module "kt_test" {
  source = "../../.."
  project_id   = var.project_id
}
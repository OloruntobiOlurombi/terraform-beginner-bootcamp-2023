module "terrahouse_aws"{
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  buket_name = var.buket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
}


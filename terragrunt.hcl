generate "provider" {
    path      = "provider.tf"
    if_exists = "overwrite"
    contents = <<EOF
    provider "google" {
        project = "formidable-bank-427016-h1"
        region  = "us-east5"
    }
EOF
}


generate "state" {
  path      = "state.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
    terraform {
        backend "gcs" {
            bucket = "tf-state-pipelineformidable-bank-427016-h1"
            prefix   = "terraform/state/${path_relative_to_include()}/terraform.tfstate"
        }
    }
EOF
}
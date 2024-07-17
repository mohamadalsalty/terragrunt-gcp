terraform {
  source = "../../../modules/gcs"
}

include "root" {
  path = find_in_parent_folders()
}
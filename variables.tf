variable "compartment_id" {
  description = "OCID from your tenancy page"
  type = string
}

variable "region" {
  description = "region where you have oci tenancy"
  type = string
  default = "sa-saopaulo-1"
}
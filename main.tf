terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  region = var.region
}

resource "oci_core_vcn" "example" {
    dns_label = "example"
    cidr_block = "172.16.0.0/16"
    compartment_id = var.compartment_id
    display_name = "Terraform VCN"
}

resource "oci_core_subnet" "terraform_subnet_one" {
  vcn_id            = oci_core_vcn.example.id
  cidr_block        = "172.16.0.0/24"
  compartment_id    = var.compartment_id
  display_name      = "Example Subnet 1"
  prohibit_public_ip_on_vnic = false
  dns_label         = "exsubnetone"
  }

  resource "oci_core_subnet" "terraform_subnet_two" {
  vcn_id            = oci_core_vcn.example.id
  cidr_block        = "172.16.1.0/24"
  compartment_id    = var.compartment_id
  display_name      = "Example Subnet 2"
  prohibit_public_ip_on_vnic = false
  dns_label         = "exsubnettwo"
  }
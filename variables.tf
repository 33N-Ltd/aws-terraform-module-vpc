variable "account_name" {}
variable "cidr" {}

variable "common_tags" {
  type = "map"
}

variable "zone" {
  type = "list"
}

locals {
  is_availability_zone_a_activated                =  1
  is_availability_zone_b_activated                =  0
  is_availability_zone_c_activated                =  0
  public_cidrs  = ["${cidrsubnet("${var.cidr}", 3, 0)}", "${cidrsubnet("${var.cidr}", 3, 1)}", "${cidrsubnet("${var.cidr}", 3, 2)}"]
  private_cidrs = ["${cidrsubnet("${var.cidr}", 3, 3)}", "${cidrsubnet("${var.cidr}", 3, 4)}", "${cidrsubnet("${var.cidr}", 3, 5)}"]
}

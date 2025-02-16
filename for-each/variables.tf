variable "instances" {
  type = map
  default = {
     mysql = "t3.small"
     backend = "t3.micro"
     frontend = "t3.micro"
  }  
}

variable "domain_name" {
    default = "prcdaws82s.online"
}

variable "zone_id" {
    default = "Z04886013SPFC8DQY8V3O"
}

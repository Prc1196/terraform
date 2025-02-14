variable "instances" {
   default     = ["mysql" ,"backend" ,"frontend"]
}

variable "zone_id" {
    default = "Z04886013SPFC8DQY8V3O"
}

variable "domain_name" {
  default =  "prcdaws82s.online"
}

variable "common_tags" {
  type        = map
  default     = {
    Project = "expense"
    Environment = "dev"
  }
  
}

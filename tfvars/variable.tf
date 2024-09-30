 variable "instances" {
    type = map
}
  variable "domain_name"{
    default = "venuportal.online"
  }

  variable "zone_id" {
    default = "Z05352171HN9KZYIJ1BXF"
  }


  variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }

  }

  variable "tags" {
    type = map
  }

  variable "environment"{
    
  }
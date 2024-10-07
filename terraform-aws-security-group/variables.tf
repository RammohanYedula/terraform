variable "project_name" {
    
}

variable "environment" {
    
}


variable "sg_name" {
    #default = monodb
}

variable "common_tags" {
    default = {}
    type = map
}

variable "sg_tags" {
    default = {}
    type = map
}
variable "sg_description" {
   # default = ""
    type = string
}

variable "vpc_id" {
    
}

variable "sg_ingress_rules" {
  type = list 
  default = []
}
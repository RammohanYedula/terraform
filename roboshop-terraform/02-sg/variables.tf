variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Teraform = "true"
  }
}

variable "sg_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_name" {
    #default = "mongodb"
}
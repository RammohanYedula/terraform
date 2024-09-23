variable "instance_names" {
    type = list 
    default = ["mongodb","redis","mysql","rabbitmq","catalouge","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
    type = string 
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id"{
    default = "Z020553815EJAI5HVGSB8"
}

variable "domain_name" {
    default = "awsmohan.online"
}
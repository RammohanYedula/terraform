# 1. command line
# 2. variable files
# 3. terraform.tfvars
# 4. environment variables





variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    default = "t2.micro"  
    type = string
}

variable "tags" {
    type = map 
    default = {
        Name = "Hello terraform"
        Project = "Roboshop"
        Environment = "Dev"
        Component = "web"
        Terraform = "true"
    }

}


variable "sg-name"{
    type = string
    default ="roboshop-all" 
}

variable "sg-description"{
    type = string
    default = "allowing all port"
}

variable "inbound-from-port" {
    type = number
    default = 0  
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
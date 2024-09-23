resource "aws_instance" "web" {
    count = 11  #count.indx is a special variable given by terraform
    ami           = var.ami_id #devops-practice
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
    #vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list
    tags ={
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "www" {
    count = 11
    zone_id = var.zone_id
    name    = "${var.instance_names[count.index]}.${var.domain_name}"  # interpolation
    type    = "A"
    ttl     = 30
    records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}
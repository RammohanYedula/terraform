resource "aws_security_group" "alow_tls" {
    name = "${var.project_name}-${var.environment}-${var.sg_name}"
    description = var.sg_description
    vpc_id = var.vpc_id

    tags = merge(
        var.common_tags,
        var.sg_tags,
        {
            Name = "${var.project_name}-${var.environment}-${var.sg_name}"
        }
    )
}
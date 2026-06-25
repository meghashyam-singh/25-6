resource "aws_ssm_parameter" "vpc_id" {
    name = "${local.common_name}_vpc_id"
    type = "String"
    value = aws_vpc.roboshop_vpc.id
}
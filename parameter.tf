resource "aws_ssm_parameter" "vpc_id" {
    name = "${local.common_name}_vpc_id"
    type = "String"
    value = aws_vpc.roboshop_vpc.id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "${local.common_name}_public_subnet_ids"
    type = "StringList"
    value = join(",", aws_subnet.public[*].id)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "${local.common_name}_private_subnet_ids"
    type = "StringList"
    value = join(",", aws_subnet.private[*].id)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "${local.common_name}_database_subnet_ids"
    type = "StringList"
    value = join(",", aws_subnet.database[*].id)
}
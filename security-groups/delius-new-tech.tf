# define security groups only for alfresco
# External
resource "aws_security_group" "case_notes_external_lb_in" {
  name        = "${var.environment_name}-${var.app_name}-case_notes-external-lb-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "External LB incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.app_name}_external-lb_in_in", "Type", "WEB"))}"

  lifecycle {
    create_before_destroy = true
  }
}

# MONGODB
resource "aws_security_group" "mongodb_db_in" {
  name        = "${var.environment_name}-${var.app_name}-mongodb-db-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "db incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.app_name}_mongodb_db_in", "Type", "DB"))}"

  lifecycle {
    create_before_destroy = true
  }
}

#API

resource "aws_security_group" "case_notes_api_in" {
  name        = "${var.environment_name}-${var.app_name}-api-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "api incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.app_name}_api_in", "Type", "API"))}"

  lifecycle {
    create_before_destroy = true
  }
}

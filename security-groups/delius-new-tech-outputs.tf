# define security groups only for delius_new_tech outputs
# External
output "sg_case_notes_external_lb_in" {
  value = "${aws_security_group.case_notes_external_lb_in.id}"
}

# case_notes_mongodb_db_in
output "sg_case_notes_mongodb_db_in" {
  value = "${aws_security_group.mongodb_db_in.id}"
}

# delius_new_tech_api_in
output "sg_case_notes_api_in" {
  value = "${aws_security_group.case_notes_api_in.id}"
}

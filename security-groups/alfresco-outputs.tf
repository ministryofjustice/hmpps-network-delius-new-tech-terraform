# define security groups only for delius_new_tech outputs
# External
output "sg_delius_new_tech_external_lb_in" {
  value = "${aws_security_group.delius_new_tech_external_lb_in.id}"
}

# delius_new_tech_nginx_in
output "sg_delius_new_tech_nginx_in" {
  value = "${aws_security_group.delius_new_tech_nginx_in.id}"
}

# delius_new_tech_db_in
output "sg_delius_new_tech_db_in" {
  value = "${aws_security_group.delius_new_tech_db_in.id}"
}

# delius_new_tech_internal_lb_in
output "sg_delius_new_tech_internal_lb_in" {
  value = "${aws_security_group.delius_new_tech_internal_lb_in.id}"
}

# delius_new_tech_api_in
output "sg_delius_new_tech_api_in" {
  value = "${aws_security_group.delius_new_tech_api_in.id}"
}

# elasticache_in
output "sg_delius_new_tech_elasticache_in" {
  value = "${aws_security_group.delius_new_tech_elasticache_in.id}"
}

# efs_in
output "sg_delius_new_tech_efs_in" {
  value = "${aws_security_group.delius_new_tech_efs_in.id}"
}

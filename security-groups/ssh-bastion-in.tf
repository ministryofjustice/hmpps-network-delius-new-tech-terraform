resource "aws_security_group" "ssh_bastion_in" {
  name        = "${var.environment_name}-ssh-bastion-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "SSH bastion in"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}-ssh-bastion-in", "Type", "SSH"))}"

  lifecycle {
    create_before_destroy = true
  }
}

output "sg_ssh_bastion_in_id" {
  value = "${aws_security_group.ssh_bastion_in.id}"
}

resource "aws_security_group_rule" "ssh_bastion_in" {
  security_group_id = "${aws_security_group.ssh_bastion_in.id}"
  type              = "ingress"
  protocol          = "tcp"
  from_port         = "22"
  to_port           = "22"
  cidr_blocks       = ["${values(data.terraform_remote_state.vpc.bastion_vpc_public_cidr)}"]
}

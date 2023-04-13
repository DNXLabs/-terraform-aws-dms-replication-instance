resource "aws_security_group" "dms_sg" {
  name   = "dms-${var.replication_instance_id}-sg"
  vpc_id = var.vpc_id

  tags = {
    Name = "dms-${var.replication_instance_id}-sg"
  }
}

# resource "aws_security_group_rule" "dms_inbound_cidrs" {
#   #count             = length(local.workspace.dms.instance.allow_cidrs) != 0 ? 1 : 0
#   type              = "ingress"
#   from_port         = try(local.workspace.dms.instance[0].port, "5439")
#   to_port           = try(local.workspace.dms.instance[0].port, "5439")
#   protocol          = "tcp"
#   cidr_blocks       = local.workspace.dms.instance[0].allow_cidrs
#   security_group_id = aws_security_group.dms_sg.id
#   description       = "From CIDR ${join(", ", local.workspace.dms.instance[0].allow_cidrs)}"
# }

resource "aws_security_group_rule" "dms_egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.dms_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}
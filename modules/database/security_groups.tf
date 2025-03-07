resource "aws_security_group" "db" {
  vpc_id = var.vpc.id
  tags   = merge(var.tags, { Name = "${var.name}-db" })
}

resource "aws_security_group_rule" "allowed-security-groups" {
  count                    = length(var.allowed_security_groups)
  description              = "postgress ingress rule ${count.index}"
  security_group_id        = aws_security_group.db.id
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "TCP"
  source_security_group_id = element(var.allowed_security_groups, count.index)
}

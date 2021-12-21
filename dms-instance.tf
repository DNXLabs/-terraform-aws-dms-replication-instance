# # Create a new DMS replication instance
resource "aws_dms_replication_instance" "default" {
  allocated_storage            = var.allocated_storage
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  availability_zone            = var.availability_zone
  engine_version               = var.engine_version
  multi_az                     = false
  preferred_maintenance_window = var.preferred_maintenance_window
  publicly_accessible          = false
  replication_instance_class   = var.replication_instance_class
  replication_instance_id      = var.replication_instance_id 
  replication_subnet_group_id  = var.replication_subnet_group_id
  vpc_security_group_ids       = var.vpc_security_group_ids

#   tags = {
#     "Name"  = var.replication_instance.name
#   }
}

# Create a subnet group using existing VPC subnets
# resource "aws_dms_replication_subnet_group" "dms" {
#   replication_subnet_group_description = "DMS replication subnet group"
#   replication_subnet_group_id          = "dms-replication-subnet-group"
#   replication_subnet_ids               = var.replication_subnet_ids

# #   tags = {
# #   }
# }



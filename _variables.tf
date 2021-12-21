variable "replication_instance_id" {
  description = "The replication instance identifier"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)"
}

variable "availability_zone" {
  description = "The EC2 Availability Zone that the replication instance will be created in"
}

variable "replication_subnet_ids" {
  description = "A list of the EC2 subnet IDs for the subnet group"
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to be used with the replication instance"
}

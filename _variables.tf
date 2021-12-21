variable "replication_instance_id" {
  description = "The replication instance identifier"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)"
}

variable "availability_zone" {
  description = "The EC2 Availability Zone that the replication instance will be created in"
}

variable "replication_subnet_group_id" {
  description = "The name for the replication subnet group. This value is stored as a lowercase string"
}

variable "subnet_ids" {
  description = "A list of the EC2 subnet IDs for the subnet group"
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to be used with the replication instance"
}

variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to be initially allocated for the replication instance"
  type        = number
  default     = 50
}

variable "engine_version" {
  description = "The engine version number of the replication instance"
}

variable "replication_instance_class" {
  description = "The compute and memory capacity of the replication instance as specified by the replication instance class"
  default     = "t3.micro"
}
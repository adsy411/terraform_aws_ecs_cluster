# variables
variable "aws_region" {}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "myEcsTaskExecutionRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "cptactionhank/atlassian-jira:latest"
}

variable "app_port" {}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
variable "alb_name" {}
variable "alb_targetgroup" {}
variable "scalein_policy_name" {}
variable "scaleout_policy_name" {}
variable "CPU_utilization_high" {}
variable "CPU_utilization_low" {}
variable "Cluster_name" {}
variable "Task" {}
variable "ServiceName" {}
variable "ContainerName" {}
variable "LogGroup" {}
variable "LogGroupName" {}
variable "LogStream" {}
variable "VpcCidrBlock" {}
variable "albSecGroupName" {}
variable "taskSecGroupName" {}
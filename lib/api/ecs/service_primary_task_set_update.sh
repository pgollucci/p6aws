######################################################################
#<
#
# Function:
#	p6_aws_ecs_service_primary_task_set_update(cluster, service, primary_task_set)
#
#  Args:
#	cluster - 
#	service - 
#	primary_task_set - 
#
#>
######################################################################
p6_aws_ecs_service_primary_task_set_update() {
    local cluster="$1"
    local service="$2"
    local primary_task_set="$3"
    shift 3

    p6_run_write_cmd aws ecs update-service-primary-task-set --cluster $cluster --service $service --primary-task-set $primary_task_set "$@"
}
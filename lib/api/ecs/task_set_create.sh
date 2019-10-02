######################################################################
#<
#
# Function:
#	p6_aws_ecs_task_set_create(service, cluster, task_definition)
#
#  Args:
#	service - 
#	cluster - 
#	task_definition - 
#
#>
######################################################################
p6_aws_ecs_task_set_create() {
    local service="$1"
    local cluster="$2"
    local task_definition="$3"
    shift 3

    p6_run_write_cmd aws ecs create-task-set --service $service --cluster $cluster --task-definition $task_definition "$@"
}
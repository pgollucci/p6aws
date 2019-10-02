######################################################################
#<
#
# Function:
#	p6_aws_ecs_task_start(task_definition, container_instances)
#
#  Args:
#	task_definition - 
#	container_instances - 
#
#>
######################################################################
p6_aws_ecs_task_start() {
    local task_definition="$1"
    local container_instances="$2"
    shift 2

    p6_run_write_cmd aws ecs start-task --task-definition $task_definition --container-instances $container_instances "$@"
}
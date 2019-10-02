######################################################################
#<
#
# Function:
#	p6_aws_ecs_task_definition_register(family, container_definitions)
#
#  Args:
#	family - 
#	container_definitions - 
#
#>
######################################################################
p6_aws_ecs_task_definition_register() {
    local family="$1"
    local container_definitions="$2"
    shift 2

    p6_run_write_cmd aws ecs register-task-definition --family $family --container-definitions $container_definitions "$@"
}
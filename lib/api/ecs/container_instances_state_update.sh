######################################################################
#<
#
# Function:
#	p6_aws_ecs_container_instances_state_update(container_instances, status)
#
#  Args:
#	container_instances - 
#	status - 
#
#>
######################################################################
p6_aws_ecs_container_instances_state_update() {
    local container_instances="$1"
    local status="$2"
    shift 2

    p6_run_write_cmd aws ecs update-container-instances-state --container-instances $container_instances --status $status "$@"
}
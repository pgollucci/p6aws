######################################################################
#<
#
# Function:
#	p6_aws_ecs_container_agent_update(container_instance)
#
#  Args:
#	container_instance - 
#
#>
######################################################################
p6_aws_ecs_container_agent_update() {
    local container_instance="$1"
    shift 1

    p6_run_write_cmd aws ecs update-container-agent --container-instance $container_instance "$@"
}
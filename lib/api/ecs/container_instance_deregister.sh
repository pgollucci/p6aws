######################################################################
#<
#
# Function:
#	p6_aws_ecs_container_instance_deregister(container_instance)
#
#  Args:
#	container_instance - 
#
#>
######################################################################
p6_aws_ecs_container_instance_deregister() {
    local container_instance="$1"
    shift 1

    p6_run_write_cmd aws ecs deregister-container-instance --container-instance $container_instance "$@"
}
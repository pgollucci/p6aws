######################################################################
#<
#
# Function:
#	p6_aws_ecs_service_update(service)
#
#  Args:
#	service - 
#
#>
######################################################################
p6_aws_ecs_service_update() {
    local service="$1"
    shift 1

    p6_run_write_cmd aws ecs update-service --service $service "$@"
}
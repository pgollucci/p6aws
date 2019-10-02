######################################################################
#<
#
# Function:
#	p6_aws_ecs_service_delete(service)
#
#  Args:
#	service - 
#
#>
######################################################################
p6_aws_ecs_service_delete() {
    local service="$1"
    shift 1

    p6_run_write_cmd aws ecs delete-service --service $service "$@"
}
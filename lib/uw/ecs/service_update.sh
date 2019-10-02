######################################################################
#<
#
# Function:
#	p6_aws_ecs_new_deployment(service)
#
#  Args:
#	service - 
#
#>
######################################################################
p6_aws_ecs_new_deployment() {
        local service="$1"
        shift 1

    cond_log_and_run aws ecs update-service --service $service --force-new-deployment "$@"
}
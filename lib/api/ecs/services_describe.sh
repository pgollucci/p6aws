######################################################################
#<
#
# Function:
#	p6_aws_ecs_services_describe(services)
#
#  Args:
#	services - 
#
#>
######################################################################
p6_aws_ecs_services_describe() {
    local services="$1"
    shift 1

    p6_run_read_cmd aws ecs describe-services --services $services "$@"
}
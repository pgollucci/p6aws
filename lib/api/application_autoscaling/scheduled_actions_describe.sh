######################################################################
#<
#
# Function:
#	p6_aws_application_autoscaling_scheduled_actions_describe(service_namespace)
#
#  Args:
#	service_namespace - 
#
#>
######################################################################
p6_aws_application_autoscaling_scheduled_actions_describe() {
    local service_namespace="$1"
    shift 1

    p6_run_read_cmd aws application-autoscaling describe-scheduled-actions --service-namespace $service_namespace "$@"
}
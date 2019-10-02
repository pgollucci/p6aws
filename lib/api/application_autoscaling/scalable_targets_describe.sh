######################################################################
#<
#
# Function:
#	p6_aws_application_autoscaling_scalable_targets_describe(service_namespace)
#
#  Args:
#	service_namespace - 
#
#>
######################################################################
p6_aws_application_autoscaling_scalable_targets_describe() {
    local service_namespace="$1"
    shift 1

    p6_run_read_cmd aws application-autoscaling describe-scalable-targets --service-namespace $service_namespace "$@"
}
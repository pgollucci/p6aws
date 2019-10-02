######################################################################
#<
#
# Function:
#	p6_aws_logs_subscription_filters_describe(log_group_name)
#
#  Args:
#	log_group_name - 
#
#>
######################################################################
p6_aws_logs_subscription_filters_describe() {
    local log_group_name="$1"
    shift 1

    p6_run_read_cmd aws logs describe-subscription-filters --log-group-name $log_group_name "$@"
}
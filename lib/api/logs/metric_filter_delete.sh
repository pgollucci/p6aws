######################################################################
#<
#
# Function:
#	p6_aws_logs_metric_filter_delete(log_group_name, filter_name)
#
#  Args:
#	log_group_name - 
#	filter_name - 
#
#>
######################################################################
p6_aws_logs_metric_filter_delete() {
    local log_group_name="$1"
    local filter_name="$2"
    shift 2

    p6_run_write_cmd aws logs delete-metric-filter --log-group-name $log_group_name --filter-name $filter_name "$@"
}
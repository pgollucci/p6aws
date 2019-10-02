######################################################################
#<
#
# Function:
#	p6_aws_logs_log_events_filter(log_group_name)
#
#  Args:
#	log_group_name - 
#
#>
######################################################################
p6_aws_logs_log_events_filter() {
    local log_group_name="$1"
    shift 1

    p6_run_write_cmd aws logs filter-log-events --log-group-name $log_group_name "$@"
}
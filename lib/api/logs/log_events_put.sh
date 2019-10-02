######################################################################
#<
#
# Function:
#	p6_aws_logs_log_events_put(log_group_name, log_stream_name, log_events)
#
#  Args:
#	log_group_name - 
#	log_stream_name - 
#	log_events - 
#
#>
######################################################################
p6_aws_logs_log_events_put() {
    local log_group_name="$1"
    local log_stream_name="$2"
    local log_events="$3"
    shift 3

    p6_run_write_cmd aws logs put-log-events --log-group-name $log_group_name --log-stream-name $log_stream_name --log-events $log_events "$@"
}
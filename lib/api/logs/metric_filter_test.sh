######################################################################
#<
#
# Function:
#      = p6_aws_logs_metric_filter_test(filter_pattern, log_event_messages)
#
# Arg(s):
#    filter_pattern - 
#    log_event_messages - 
#
#
#>
######################################################################
p6_aws_logs_metric_filter_test() {
    local filter_pattern="$1"
    local log_event_messages="$2"
    shift 2

    p6_run_write_cmd aws logs test-metric-filter --filter-pattern $filter_pattern --log-event-messages $log_event_messages "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_health_event_details_describe(event_arns)
#
#  Args:
#	event_arns - 
#
#>
######################################################################
p6_aws_health_event_details_describe() {
    local event_arns="$1"
    shift 1

    p6_run_read_cmd aws health describe-event-details --event-arns $event_arns "$@"
}
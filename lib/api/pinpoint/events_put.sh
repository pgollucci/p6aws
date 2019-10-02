######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_events_put(application_id, events_request)
#
#  Args:
#	application_id - 
#	events_request - 
#
#>
######################################################################
p6_aws_pinpoint_events_put() {
    local application_id="$1"
    local events_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint put-events --application-id $application_id --events-request $events_request "$@"
}
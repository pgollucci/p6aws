######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_event_stream_delete(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_event_stream_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws pinpoint delete-event-stream --application-id $application_id "$@"
}
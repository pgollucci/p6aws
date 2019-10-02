######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_messages_send(application_id, message_request)
#
#  Args:
#	application_id - 
#	message_request - 
#
#>
######################################################################
p6_aws_pinpoint_messages_send() {
    local application_id="$1"
    local message_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint send-messages --application-id $application_id --message-request $message_request "$@"
}
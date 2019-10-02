######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_users_messages_send(application_id, send_users_message_request)
#
#  Args:
#	application_id - 
#	send_users_message_request - 
#
#>
######################################################################
p6_aws_pinpoint_users_messages_send() {
    local application_id="$1"
    local send_users_message_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint send-users-messages --application-id $application_id --send-users-message-request $send_users_message_request "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_channel_update(application_id, email_channel_request)
#
# Arg(s):
#    application_id - 
#    email_channel_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_channel_update() {
    local application_id="$1"
    local email_channel_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-email-channel --application-id $application_id --email-channel-request $email_channel_request "$@"
}
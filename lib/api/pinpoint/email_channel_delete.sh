######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_channel_delete(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_channel_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws pinpoint delete-email-channel --application-id $application_id "$@"
}
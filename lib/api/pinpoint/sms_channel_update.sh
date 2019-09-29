######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_sms_channel_update(application_id, sms_channel_request)
#
# Arg(s):
#    application_id - 
#    sms_channel_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_sms_channel_update() {
    local application_id="$1"
    local sms_channel_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-sms-channel --application-id $application_id --sms-channel-request $sms_channel_request "$@"
}
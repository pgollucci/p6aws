######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_apns_voip_sandbox_channel_update(apns_voip_sandbox_channel_request, application_id)
#
# Arg(s):
#    apns_voip_sandbox_channel_request - 
#    application_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_apns_voip_sandbox_channel_update() {
    local apns_voip_sandbox_channel_request="$1"
    local application_id="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-apns-voip-sandbox-channel --apns-voip-sandbox-channel-request $apns_voip_sandbox_channel_request --application-id $application_id "$@"
}
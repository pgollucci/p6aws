######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_gcm_channel_update(application_id, gcm_channel_request)
#
# Arg(s):
#    application_id - 
#    gcm_channel_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_gcm_channel_update() {
    local application_id="$1"
    local gcm_channel_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-gcm-channel --application-id $application_id --gcm-channel-request $gcm_channel_request "$@"
}
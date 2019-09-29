######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_adm_channel_update(adm_channel_request, application_id)
#
# Arg(s):
#    adm_channel_request - 
#    application_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_adm_channel_update() {
    local adm_channel_request="$1"
    local application_id="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-adm-channel --adm-channel-request $adm_channel_request --application-id $application_id "$@"
}
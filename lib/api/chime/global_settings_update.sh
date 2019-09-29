######################################################################
#<
#
# Function:
#      = p6_aws_chime_global_settings_update(business_calling, voice_connector)
#
# Arg(s):
#    business_calling - 
#    voice_connector - 
#
#
#>
######################################################################
p6_aws_chime_global_settings_update() {
    local business_calling="$1"
    local voice_connector="$2"
    shift 2

    p6_run_write_cmd aws chime update-global-settings --business-calling $business_calling --voice-connector $voice_connector "$@"
}
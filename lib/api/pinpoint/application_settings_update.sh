######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_application_settings_update(application_id, write_application_settings_request)
#
# Arg(s):
#    application_id - 
#    write_application_settings_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_application_settings_update() {
    local application_id="$1"
    local write_application_settings_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-application-settings --application-id $application_id --write-application-settings-request $write_application_settings_request "$@"
}
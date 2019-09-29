######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_input_add(application_name, current_application_version_id, input)
#
# Arg(s):
#    application_name - 
#    current_application_version_id - 
#    input - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_input_add() {
    local application_name="$1"
    local current_application_version_id="$2"
    local input="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalyticsv2 add-application-input --application-name $application_name --current-application-version-id $current_application_version_id --input $input "$@"
}
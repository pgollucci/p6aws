######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalytics_application_input_processing_configuration_delete(application_name, current_application_version_id, input_id)
#
# Arg(s):
#    application_name - 
#    current_application_version_id - 
#    input_id - 
#
#
#>
######################################################################
p6_aws_kinesisanalytics_application_input_processing_configuration_delete() {
    local application_name="$1"
    local current_application_version_id="$2"
    local input_id="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalytics delete-application-input-processing-configuration --application-name $application_name --current-application-version-id $current_application_version_id --input-id $input_id "$@"
}
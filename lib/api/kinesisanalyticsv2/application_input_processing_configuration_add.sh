######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalyticsv2_application_input_processing_configuration_add(application_name, current_application_version_id, input_id, input_processing_configuration)
#
#  Args:
#	application_name - 
#	current_application_version_id - 
#	input_id - 
#	input_processing_configuration - 
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_input_processing_configuration_add() {
    local application_name="$1"
    local current_application_version_id="$2"
    local input_id="$3"
    local input_processing_configuration="$4"
    shift 4

    p6_run_write_cmd aws kinesisanalyticsv2 add-application-input-processing-configuration --application-name $application_name --current-application-version-id $current_application_version_id --input-id $input_id --input-processing-configuration $input_processing_configuration "$@"
}
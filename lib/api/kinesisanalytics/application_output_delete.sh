######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalytics_application_output_delete(application_name, current_application_version_id, output_id)
#
#  Args:
#	application_name - 
#	current_application_version_id - 
#	output_id - 
#
#>
######################################################################
p6_aws_kinesisanalytics_application_output_delete() {
    local application_name="$1"
    local current_application_version_id="$2"
    local output_id="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalytics delete-application-output --application-name $application_name --current-application-version-id $current_application_version_id --output-id $output_id "$@"
}
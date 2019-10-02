######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalyticsv2_application_update(application_name, current_application_version_id)
#
#  Args:
#	application_name - 
#	current_application_version_id - 
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_update() {
    local application_name="$1"
    local current_application_version_id="$2"
    shift 2

    p6_run_write_cmd aws kinesisanalyticsv2 update-application --application-name $application_name --current-application-version-id $current_application_version_id "$@"
}
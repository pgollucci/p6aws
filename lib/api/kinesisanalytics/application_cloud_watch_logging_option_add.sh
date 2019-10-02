######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalytics_application_cloud_watch_logging_option_add(application_name, current_application_version_id, cloud_watch_logging_option)
#
#  Args:
#	application_name - 
#	current_application_version_id - 
#	cloud_watch_logging_option - 
#
#>
######################################################################
p6_aws_kinesisanalytics_application_cloud_watch_logging_option_add() {
    local application_name="$1"
    local current_application_version_id="$2"
    local cloud_watch_logging_option="$3"
    shift 3

    p6_run_write_cmd aws kinesisanalytics add-application-cloud-watch-logging-option --application-name $application_name --current-application-version-id $current_application_version_id --cloud-watch-logging-option $cloud_watch_logging_option "$@"
}
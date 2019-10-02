######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalytics_application_delete(application_name, create_timestamp)
#
#  Args:
#	application_name - 
#	create_timestamp - 
#
#>
######################################################################
p6_aws_kinesisanalytics_application_delete() {
    local application_name="$1"
    local create_timestamp="$2"
    shift 2

    p6_run_write_cmd aws kinesisanalytics delete-application --application-name $application_name --create-timestamp $create_timestamp "$@"
}
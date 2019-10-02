######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalytics_application_stop(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_kinesisanalytics_application_stop() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws kinesisanalytics stop-application --application-name $application_name "$@"
}
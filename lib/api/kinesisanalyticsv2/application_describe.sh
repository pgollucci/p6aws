######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalyticsv2_application_describe(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_describe() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws kinesisanalyticsv2 describe-application --application-name $application_name "$@"
}
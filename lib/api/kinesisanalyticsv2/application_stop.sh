######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_stop(application_name)
#
# Arg(s):
#    application_name - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_stop() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws kinesisanalyticsv2 stop-application --application-name $application_name "$@"
}
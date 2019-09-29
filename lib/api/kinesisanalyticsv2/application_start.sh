######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_application_start(application_name, run_configuration)
#
# Arg(s):
#    application_name - 
#    run_configuration - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_application_start() {
    local application_name="$1"
    local run_configuration="$2"
    shift 2

    p6_run_write_cmd aws kinesisanalyticsv2 start-application --application-name $application_name --run-configuration $run_configuration "$@"
}
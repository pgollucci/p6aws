######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalytics_application_describe(application_name)
#
# Arg(s):
#    application_name - 
#
#
#>
######################################################################
p6_aws_kinesisanalytics_application_describe() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws kinesisanalytics describe-application --application-name $application_name "$@"
}
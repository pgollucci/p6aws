######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_application_update(application_name)
#
# Arg(s):
#    application_name - 
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_application_update() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk update-application --application-name $application_name "$@"
}
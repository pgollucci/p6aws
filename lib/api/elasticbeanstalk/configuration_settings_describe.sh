######################################################################
#<
#
# Function:
#	p6_aws_elasticbeanstalk_configuration_settings_describe(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_elasticbeanstalk_configuration_settings_describe() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws elasticbeanstalk describe-configuration-settings --application-name $application_name "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_configuration_settings_validate(application_name, option_settings)
#
# Arg(s):
#    application_name - 
#    option_settings - 
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_configuration_settings_validate() {
    local application_name="$1"
    local option_settings="$2"
    shift 2

    p6_run_write_cmd aws elasticbeanstalk validate-configuration-settings --application-name $application_name --option-settings $option_settings "$@"
}
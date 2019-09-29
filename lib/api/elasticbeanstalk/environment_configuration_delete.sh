######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_environment_configuration_delete(application_name, environment_name)
#
# Arg(s):
#    application_name - 
#    environment_name - 
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_environment_configuration_delete() {
    local application_name="$1"
    local environment_name="$2"
    shift 2

    p6_run_write_cmd aws elasticbeanstalk delete-environment-configuration --application-name $application_name --environment-name $environment_name "$@"
}
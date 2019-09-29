######################################################################
#<
#
# Function:
#      = p6_aws_sms_app_launch_configuration_put()
#
#
#
#>
######################################################################
p6_aws_sms_app_launch_configuration_put() {

    p6_run_write_cmd aws sms put-app-launch-configuration "$@"
}
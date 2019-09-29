######################################################################
#<
#
# Function:
#      = p6_aws_sms_app_launch_configuration_delete()
#
#
#
#>
######################################################################
p6_aws_sms_app_launch_configuration_delete() {

    p6_run_write_cmd aws sms delete-app-launch-configuration "$@"
}
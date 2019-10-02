######################################################################
#<
#
# Function:
#	p6_aws_sms_app_launch_configuration_get()
#
#>
######################################################################
p6_aws_sms_app_launch_configuration_get() {

    p6_run_read_cmd aws sms get-app-launch-configuration "$@"
}
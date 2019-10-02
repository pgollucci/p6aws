######################################################################
#<
#
# Function:
#	p6_aws_sms_app_terminate()
#
#>
######################################################################
p6_aws_sms_app_terminate() {

    p6_run_write_cmd aws sms terminate-app "$@"
}
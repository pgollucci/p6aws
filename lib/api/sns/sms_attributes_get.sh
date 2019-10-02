######################################################################
#<
#
# Function:
#	p6_aws_sns_sms_attributes_get()
#
#>
######################################################################
p6_aws_sns_sms_attributes_get() {

    p6_run_read_cmd aws sns get-sms-attributes "$@"
}
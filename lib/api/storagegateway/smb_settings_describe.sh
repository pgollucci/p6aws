######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_smb_settings_describe(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_smb_settings_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-smb-settings --gateway-arn $gateway_arn "$@"
}
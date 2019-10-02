######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_device_confirm(access_token, device_key)
#
#  Args:
#	access_token - 
#	device_key - 
#
#>
######################################################################
p6_aws_cognito_idp_device_confirm() {
    local access_token="$1"
    local device_key="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp confirm-device --access-token $access_token --device-key $device_key "$@"
}
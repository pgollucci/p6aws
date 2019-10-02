######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_device_status_update(access_token, device_key)
#
#  Args:
#	access_token - 
#	device_key - 
#
#>
######################################################################
p6_aws_cognito_idp_device_status_update() {
    local access_token="$1"
    local device_key="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp update-device-status --access-token $access_token --device-key $device_key "$@"
}
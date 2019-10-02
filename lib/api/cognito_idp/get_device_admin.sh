######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_get_device_admin(device_key, user_pool_id, username)
#
#  Args:
#	device_key - 
#	user_pool_id - 
#	username - 
#
#>
######################################################################
p6_aws_cognito_idp_get_device_admin() {
    local device_key="$1"
    local user_pool_id="$2"
    local username="$3"
    shift 3

    p6_run_read_cmd aws cognito-idp admin-get-device --device-key $device_key --user-pool-id $user_pool_id --username $username "$@"
}
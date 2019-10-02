######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_update_device_status_admin(user_pool_id, username, device_key)
#
#  Args:
#	user_pool_id - 
#	username - 
#	device_key - 
#
#>
######################################################################
p6_aws_cognito_idp_update_device_status_admin() {
    local user_pool_id="$1"
    local username="$2"
    local device_key="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-update-device-status --user-pool-id $user_pool_id --username $username --device-key $device_key "$@"
}
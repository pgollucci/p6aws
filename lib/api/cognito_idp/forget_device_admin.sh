p6_aws_cognito_idp_forget_device_admin() {
    local user_pool_id="$1"
    local username="$2"
    local device_key="$3"
    shift 3

    p6_run_read_cmd aws cognito-idp admin-forget-device --user-pool-id $user_pool_id --username $username --device-key $device_key "$@"
}

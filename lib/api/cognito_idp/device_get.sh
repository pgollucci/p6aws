p6_aws_cognito_idp_device_get() {
    local device_key="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-device --device-key $device_key "$@"
}

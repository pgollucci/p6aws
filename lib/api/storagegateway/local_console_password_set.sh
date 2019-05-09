p6_aws_storagegateway_local_console_password_set() {
    local gateway_arn="$1"
    local local_console_password="$2"
    shift 2

    p6_log_or_run aws storagegateway set-local-console-password --gateway-arn $gateway_arn --local-console-password $local_console_password "$@"
}

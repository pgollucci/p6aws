p6_aws_storagegateway_gateway_shutdown() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway shutdown-gateway --gateway-arn $gateway_arn "$@"
}

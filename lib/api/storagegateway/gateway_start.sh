p6_aws_storagegateway_gateway_start() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway start-gateway --gateway-arn $gateway_arn "$@"
}

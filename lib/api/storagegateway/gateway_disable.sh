p6_aws_storagegateway_gateway_disable() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway disable-gateway --gateway-arn $gateway_arn "$@"
}

p6_aws_storagegateway_bandwidth_rate_limit_update() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway update-bandwidth-rate-limit --gateway-arn $gateway_arn "$@"
}

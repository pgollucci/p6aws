p6_aws_storagegateway_cache_reset() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway reset-cache --gateway-arn $gateway_arn "$@"
}

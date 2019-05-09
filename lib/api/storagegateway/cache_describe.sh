p6_aws_storagegateway_cache_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-cache --gateway-arn $gateway_arn "$@"
}

p6_aws_storagegateway_tapes_describe() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-tapes --gateway-arn $gateway_arn "$@"
}

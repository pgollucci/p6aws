p6_aws_storagegateway_tape_delete() {
    local gateway_arn="$1"
    local tape_arn="$2"
    shift 2

    p6_log_or_run aws storagegateway delete-tape --gateway-arn $gateway_arn --tape-arn $tape_arn "$@"
}

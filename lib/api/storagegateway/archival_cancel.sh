p6_aws_storagegateway_archival_cancel() {
    local gateway_arn="$1"
    local tape_arn="$2"
    shift 2

    p6_run_write_cmd aws storagegateway cancel-archival --gateway-arn $gateway_arn --tape-arn $tape_arn "$@"
}

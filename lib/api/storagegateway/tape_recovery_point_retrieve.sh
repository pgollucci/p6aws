p6_aws_storagegateway_tape_recovery_point_retrieve() {
    local tape_arn="$1"
    local gateway_arn="$2"
    shift 2

    p6_run_write_cmd aws storagegateway retrieve-tape-recovery-point --tape-arn $tape_arn --gateway-arn $gateway_arn "$@"
}

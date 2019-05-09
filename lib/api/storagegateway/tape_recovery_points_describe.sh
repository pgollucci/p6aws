p6_aws_storagegateway_tape_recovery_points_describe() {
    local gateway_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-tape-recovery-points --gateway-arn $gateway_arn "$@"
}

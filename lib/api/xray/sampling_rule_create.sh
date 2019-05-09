p6_aws_xray_sampling_rule_create() {
    local sampling_rule="$1"
    shift 1

    p6_log_or_run aws xray create-sampling-rule --sampling-rule $sampling_rule "$@"
}

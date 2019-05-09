p6_aws_xray_sampling_rule_update() {
    local sampling_rule_update="$1"
    shift 1

    p6_log_or_run aws xray update-sampling-rule --sampling-rule-update $sampling_rule_update "$@"
}

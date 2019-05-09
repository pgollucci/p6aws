p6_aws_xray_sampling_rule_create() {
    local sampling_rule="$1"
    shift 1

    p6_run_write_cmd aws xray create-sampling-rule --sampling-rule $sampling_rule "$@"
}

p6_aws_ssm_patch_baseline_delete() {
    local baseline_id="$1"
    shift 1

    p6_log_or_run aws ssm delete-patch-baseline --baseline-id $baseline_id "$@"
}

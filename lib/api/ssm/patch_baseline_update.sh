p6_aws_ssm_patch_baseline_update() {
    local baseline_id="$1"
    shift 1

    p6_log_or_run aws ssm update-patch-baseline --baseline-id $baseline_id "$@"
}

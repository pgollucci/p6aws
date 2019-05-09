p6_aws_ssm_default_patch_baseline_register() {
    local baseline_id="$1"
    shift 1

    p6_log_or_run aws ssm register-default-patch-baseline --baseline-id $baseline_id "$@"
}

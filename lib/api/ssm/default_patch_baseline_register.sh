p6_aws_ssm_default_patch_baseline_register() {
    local baseline_id="$1"
    shift 1

    p6_run_write_cmd aws ssm register-default-patch-baseline --baseline-id $baseline_id "$@"
}

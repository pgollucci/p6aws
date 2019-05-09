p6_aws_ssm_patch_baseline_get() {
    local baseline_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-patch-baseline --baseline-id $baseline_id "$@"
}

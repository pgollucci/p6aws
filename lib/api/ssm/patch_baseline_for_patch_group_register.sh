p6_aws_ssm_patch_baseline_for_patch_group_register() {
    local baseline_id="$1"
    local patch_group="$2"
    shift 2

    p6_run_write_cmd aws ssm register-patch-baseline-for-patch-group --baseline-id $baseline_id --patch-group $patch_group "$@"
}

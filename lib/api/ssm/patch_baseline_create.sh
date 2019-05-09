p6_aws_ssm_patch_baseline_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws ssm create-patch-baseline --name $name "$@"
}

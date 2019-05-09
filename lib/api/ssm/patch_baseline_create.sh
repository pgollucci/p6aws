p6_aws_ssm_patch_baseline_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ssm create-patch-baseline --name $name "$@"
}

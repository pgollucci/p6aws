p6_aws_ssm_default_patch_baseline_get() {

    p6_log_and_run aws ssm get-default-patch-baseline "$@"
}

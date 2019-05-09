p6_aws_elbv2_targets_register() {
    local target_group_arn="$1"
    local targets="$2"
    shift 2

    p6_run_read_cmd aws elbv2 register-targets --target-group-arn $target_group_arn --targets $targets "$@"
}

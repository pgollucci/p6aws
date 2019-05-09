p6_aws_ssm_instance_patch_states_describe() {
    local instance_ids="$1"
    shift 1

    p6_log_and_run aws ssm describe-instance-patch-states --instance-ids $instance_ids "$@"
}

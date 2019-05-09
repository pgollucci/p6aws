p6_aws_ssm_effective_instance_associations_describe() {
    local instance_id="$1"
    shift 1

    p6_log_and_run aws ssm describe-effective-instance-associations --instance-id $instance_id "$@"
}

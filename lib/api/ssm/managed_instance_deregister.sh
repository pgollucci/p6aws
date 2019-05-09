p6_aws_ssm_managed_instance_deregister() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws ssm deregister-managed-instance --instance-id $instance_id "$@"
}

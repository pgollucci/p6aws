p6_aws_opsworks_instance_unassign() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks unassign-instance --instance-id $instance_id "$@"
}

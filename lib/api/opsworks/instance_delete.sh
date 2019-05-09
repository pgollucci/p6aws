p6_aws_opsworks_instance_delete() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks delete-instance --instance-id $instance_id "$@"
}

p6_aws_opsworks_instance_update() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks update-instance --instance-id $instance_id "$@"
}

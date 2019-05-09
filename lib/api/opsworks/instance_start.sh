p6_aws_opsworks_instance_start() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks start-instance --instance-id $instance_id "$@"
}

p6_aws_opsworks_instance_deregister() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks deregister-instance --instance-id $instance_id "$@"
}

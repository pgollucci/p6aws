p6_aws_lightsail_instance_delete() {
    local instance_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-instance --instance-name $instance_name "$@"
}

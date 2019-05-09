p6_aws_lightsail_instance_snapshot_delete() {
    local instance_snapshot_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-instance-snapshot --instance-snapshot-name $instance_snapshot_name "$@"
}

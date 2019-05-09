p6_aws_lightsail_instance_snapshot_create() {
    local instance_snapshot_name="$1"
    local instance_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail create-instance-snapshot --instance-snapshot-name $instance_snapshot_name --instance-name $instance_name "$@"
}

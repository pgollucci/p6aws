p6_aws_lightsail_instance_delete() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-instance --instance-name $instance_name "$@"
}

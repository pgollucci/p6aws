p6_aws_lightsail_instance_state_get() {
    local instance_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-instance-state --instance-name $instance_name "$@"
}

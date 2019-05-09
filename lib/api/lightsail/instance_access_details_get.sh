p6_aws_lightsail_instance_access_details_get() {
    local instance_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-instance-access-details --instance-name $instance_name "$@"
}

p6_aws_lightsail_static_ip_detach() {
    local static_ip_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail detach-static-ip --static-ip-name $static_ip_name "$@"
}

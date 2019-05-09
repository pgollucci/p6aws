p6_aws_lightsail_instance_public_ports_put() {
    local port_infos="$1"
    local instance_name="$2"
    shift 2

    p6_log_or_run aws lightsail put-instance-public-ports --port-infos $port_infos --instance-name $instance_name "$@"
}

p6_aws_lightsail_load_balancer_create() {
    local load_balancer_name="$1"
    local instance_port="$2"
    shift 2

    p6_log_or_run aws lightsail create-load-balancer --load-balancer-name $load_balancer_name --instance-port $instance_port "$@"
}

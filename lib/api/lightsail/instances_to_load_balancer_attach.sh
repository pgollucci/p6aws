p6_aws_lightsail_instances_to_load_balancer_attach() {
    local load_balancer_name="$1"
    local instance_names="$2"
    shift 2

    p6_log_or_run aws lightsail attach-instances-to-load-balancer --load-balancer-name $load_balancer_name --instance-names $instance_names "$@"
}

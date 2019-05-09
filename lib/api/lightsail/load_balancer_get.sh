p6_aws_lightsail_load_balancer_get() {
    local load_balancer_name="$1"
    shift 1

    p6_log_and_run aws lightsail get-load-balancer --load-balancer-name $load_balancer_name "$@"
}

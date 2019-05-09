p6_aws_lightsail_load_balancer_delete() {
    local load_balancer_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-load-balancer --load-balancer-name $load_balancer_name "$@"
}

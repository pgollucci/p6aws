p6_aws_lightsail_load_balancer_delete() {
    local load_balancer_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-load-balancer --load-balancer-name $load_balancer_name "$@"
}

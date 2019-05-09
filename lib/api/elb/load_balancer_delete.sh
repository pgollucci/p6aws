p6_aws_elb_load_balancer_delete() {
    local load_balancer_name="$1"
    shift 1

    p6_log_or_run aws elb delete-load-balancer --load-balancer-name $load_balancer_name "$@"
}

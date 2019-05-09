p6_aws_elb_load_balancer_from_subnets_detach() {
    local load_balancer_name="$1"
    local subnets="$2"
    shift 2

    p6_log_or_run aws elb detach-load-balancer-from-subnets --load-balancer-name $load_balancer_name --subnets $subnets "$@"
}

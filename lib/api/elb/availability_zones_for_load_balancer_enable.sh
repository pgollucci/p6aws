p6_aws_elb_availability_zones_for_load_balancer_enable() {
    local load_balancer_name="$1"
    local availability_zones="$2"
    shift 2

    p6_run_write_cmd aws elb enable-availability-zones-for-load-balancer --load-balancer-name $load_balancer_name --availability-zones $availability_zones "$@"
}

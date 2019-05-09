p6_aws_elb_instances_with_load_balancer_register() {
    local load_balancer_name="$1"
    local instances="$2"
    shift 2

    p6_log_or_run aws elb register-instances-with-load-balancer --load-balancer-name $load_balancer_name --instances $instances "$@"
}

p6_aws_elb_instances_with_load_balancer_register() {
    local load_balancer_name="$1"
    local instances="$2"
    shift 2

    p6_run_write_cmd aws elb register-instances-with-load-balancer --load-balancer-name $load_balancer_name --instances $instances "$@"
}

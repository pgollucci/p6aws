p6_aws_elb_tags_describe() {
    local load_balancer_names="$1"
    shift 1

    p6_run_read_cmd aws elb describe-tags --load-balancer-names $load_balancer_names "$@"
}

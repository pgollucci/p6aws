p6_aws_elbv2_load_balancer_attributes_describe() {
    local load_balancer_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 describe-load-balancer-attributes --load-balancer-arn $load_balancer_arn "$@"
}

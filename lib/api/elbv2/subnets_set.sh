p6_aws_elbv2_subnets_set() {
    local load_balancer_arn="$1"
    shift 1

    p6_log_or_run aws elbv2 set-subnets --load-balancer-arn $load_balancer_arn "$@"
}

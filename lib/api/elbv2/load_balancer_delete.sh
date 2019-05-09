p6_aws_elbv2_load_balancer_delete() {
    local load_balancer_arn="$1"
    shift 1

    p6_log_or_run aws elbv2 delete-load-balancer --load-balancer-arn $load_balancer_arn "$@"
}

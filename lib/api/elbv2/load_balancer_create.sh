p6_aws_elbv2_load_balancer_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws elbv2 create-load-balancer --name $name "$@"
}

p6_aws_elbv2_load_balancer_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws elbv2 create-load-balancer --name $name "$@"
}

p6_aws_elbv2_load_balancer_attributes_modify() {
    local load_balancer_arn="$1"
    local attributes="$2"
    shift 2

    p6_run_write_cmd aws elbv2 modify-load-balancer-attributes --load-balancer-arn $load_balancer_arn --attributes $attributes "$@"
}

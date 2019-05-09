p6_aws_lightsail_load_balancer_attribute_update() {
    local load_balancer_name="$1"
    local attribute_name="$2"
    local attribute_value="$3"
    shift 3

    p6_run_write_cmd aws lightsail update-load-balancer-attribute --load-balancer-name $load_balancer_name --attribute-name $attribute_name --attribute-value $attribute_value "$@"
}

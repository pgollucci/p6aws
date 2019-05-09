p6_aws_snowball_cluster_create() {
    local job_type="$1"
    local resources="$2"
    local address_id="$3"
    local role_arn="$4"
    local shipping_option="$5"
    shift 5

    p6_run_write_cmd aws snowball create-cluster --job-type $job_type --resources $resources --address-id $address_id --role-arn $role_arn --shipping-option $shipping_option "$@"
}

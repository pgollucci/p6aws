p6_aws_route53resolver_resolver_endpoint_ip_address_associate() {
    local resolver_endpoint_id="$1"
    local ip_address="$2"
    shift 2

    p6_run_write_cmd aws route53resolver associate-resolver-endpoint-ip-address --resolver-endpoint-id $resolver_endpoint_id --ip-address $ip_address "$@"
}

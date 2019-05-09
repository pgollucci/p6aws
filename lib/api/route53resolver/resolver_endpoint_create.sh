p6_aws_route53resolver_resolver_endpoint_create() {
    local creator_request_id="$1"
    local security_group_ids="$2"
    local direction="$3"
    local ip_addresses="$4"
    shift 4

    p6_run_write_cmd aws route53resolver create-resolver-endpoint --creator-request-id $creator_request_id --security-group-ids $security_group_ids --direction $direction --ip-addresses $ip_addresses "$@"
}

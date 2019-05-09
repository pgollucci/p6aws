p6_aws_route53resolver_resolver_endpoint_update() {
    local resolver_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws route53resolver update-resolver-endpoint --resolver-endpoint-id $resolver_endpoint_id "$@"
}

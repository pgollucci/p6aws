p6_aws_route53resolver_resolver_endpoint_get() {
    local resolver_endpoint_id="$1"
    shift 1

    p6_run_read_cmd aws route53resolver get-resolver-endpoint --resolver-endpoint-id $resolver_endpoint_id "$@"
}

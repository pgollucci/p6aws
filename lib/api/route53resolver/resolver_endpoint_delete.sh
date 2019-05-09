p6_aws_route53resolver_resolver_endpoint_delete() {
    local resolver_endpoint_id="$1"
    shift 1

    p6_log_or_run aws route53resolver delete-resolver-endpoint --resolver-endpoint-id $resolver_endpoint_id "$@"
}

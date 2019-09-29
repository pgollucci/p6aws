######################################################################
#<
#
# Function:
#      = p6_aws_route53resolver_resolver_endpoint_delete(resolver_endpoint_id)
#
# Arg(s):
#    resolver_endpoint_id - 
#
#
#>
######################################################################
p6_aws_route53resolver_resolver_endpoint_delete() {
    local resolver_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws route53resolver delete-resolver-endpoint --resolver-endpoint-id $resolver_endpoint_id "$@"
}
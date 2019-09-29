######################################################################
#<
#
# Function:
#      = p6_aws_route53resolver_resolver_endpoint_ip_addresses_list(resolver_endpoint_id)
#
# Arg(s):
#    resolver_endpoint_id - 
#
#
#>
######################################################################
p6_aws_route53resolver_resolver_endpoint_ip_addresses_list() {
    local resolver_endpoint_id="$1"
    shift 1

    p6_run_read_cmd aws route53resolver list-resolver-endpoint-ip-addresses --resolver-endpoint-id $resolver_endpoint_id "$@"
}
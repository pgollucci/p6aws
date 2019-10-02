######################################################################
#<
#
# Function:
#	p6_aws_route53resolver_resolver_endpoints_list()
#
#>
######################################################################
p6_aws_route53resolver_resolver_endpoints_list() {

    p6_run_read_cmd aws route53resolver list-resolver-endpoints "$@"
}
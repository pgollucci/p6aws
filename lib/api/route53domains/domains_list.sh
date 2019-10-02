######################################################################
#<
#
# Function:
#	p6_aws_route53domains_domains_list()
#
#>
######################################################################
p6_aws_route53domains_domains_list() {

    p6_run_read_cmd aws route53domains list-domains "$@"
}
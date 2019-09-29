######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_tags_for_domain_list(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_route53domains_tags_for_domain_list() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws route53domains list-tags-for-domain --domain-name $domain_name "$@"
}
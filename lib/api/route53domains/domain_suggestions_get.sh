######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_domain_suggestions_get(domain_name, suggestion_count, only_available)
#
# Arg(s):
#    domain_name - 
#    suggestion_count - 
#    only_available - 
#
#
#>
######################################################################
p6_aws_route53domains_domain_suggestions_get() {
    local domain_name="$1"
    local suggestion_count="$2"
    local only_available="$3"
    shift 3

    p6_run_read_cmd aws route53domains get-domain-suggestions --domain-name $domain_name --suggestion-count $suggestion_count --only-available $only_available "$@"
}
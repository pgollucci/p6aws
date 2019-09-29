######################################################################
#<
#
# Function:
#      = p6_aws_es_elasticsearch_domains_describe(domain_names)
#
# Arg(s):
#    domain_names - 
#
#
#>
######################################################################
p6_aws_es_elasticsearch_domains_describe() {
    local domain_names="$1"
    shift 1

    p6_run_read_cmd aws es describe-elasticsearch-domains --domain-names $domain_names "$@"
}
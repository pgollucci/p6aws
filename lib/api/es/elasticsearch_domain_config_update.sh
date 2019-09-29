######################################################################
#<
#
# Function:
#      = p6_aws_es_elasticsearch_domain_config_update(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_es_elasticsearch_domain_config_update() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws es update-elasticsearch-domain-config --domain-name $domain_name "$@"
}
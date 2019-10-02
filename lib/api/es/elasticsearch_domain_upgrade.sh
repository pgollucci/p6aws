######################################################################
#<
#
# Function:
#	p6_aws_es_elasticsearch_domain_upgrade(domain_name, target_version)
#
#  Args:
#	domain_name - 
#	target_version - 
#
#>
######################################################################
p6_aws_es_elasticsearch_domain_upgrade() {
    local domain_name="$1"
    local target_version="$2"
    shift 2

    p6_run_write_cmd aws es upgrade-elasticsearch-domain --domain-name $domain_name --target-version $target_version "$@"
}
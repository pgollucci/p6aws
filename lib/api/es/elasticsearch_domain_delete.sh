######################################################################
#<
#
# Function:
#	p6_aws_es_elasticsearch_domain_delete(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_es_elasticsearch_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws es delete-elasticsearch-domain --domain-name $domain_name "$@"
}
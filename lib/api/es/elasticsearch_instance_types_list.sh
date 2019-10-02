######################################################################
#<
#
# Function:
#	p6_aws_es_elasticsearch_instance_types_list(elasticsearch_version)
#
#  Args:
#	elasticsearch_version - 
#
#>
######################################################################
p6_aws_es_elasticsearch_instance_types_list() {
    local elasticsearch_version="$1"
    shift 1

    p6_run_read_cmd aws es list-elasticsearch-instance-types --elasticsearch-version $elasticsearch_version "$@"
}
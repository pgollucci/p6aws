######################################################################
#<
#
# Function:
#	p6_aws_es_reserved_elasticsearch_instances_describe()
#
#>
######################################################################
p6_aws_es_reserved_elasticsearch_instances_describe() {

    p6_run_read_cmd aws es describe-reserved-elasticsearch-instances "$@"
}
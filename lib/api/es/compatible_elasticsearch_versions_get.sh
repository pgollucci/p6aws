######################################################################
#<
#
# Function:
#      = p6_aws_es_compatible_elasticsearch_versions_get()
#
#
#
#>
######################################################################
p6_aws_es_compatible_elasticsearch_versions_get() {

    p6_run_read_cmd aws es get-compatible-elasticsearch-versions "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_es_elasticsearch_service_role_delete()
#
#
#
#>
######################################################################
p6_aws_es_elasticsearch_service_role_delete() {

    p6_run_write_cmd aws es delete-elasticsearch-service-role "$@"
}
p6_aws_es_elasticsearch_service_role_delete() {

    p6_log_or_run aws es delete-elasticsearch-service-role "$@"
}

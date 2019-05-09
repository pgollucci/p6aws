p6_aws_es_elasticsearch_service_software_update_cancel() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws es cancel-elasticsearch-service-software-update --domain-name $domain_name "$@"
}

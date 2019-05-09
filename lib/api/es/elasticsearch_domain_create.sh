p6_aws_es_elasticsearch_domain_create() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws es create-elasticsearch-domain --domain-name $domain_name "$@"
}

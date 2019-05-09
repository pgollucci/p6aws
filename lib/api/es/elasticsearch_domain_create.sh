p6_aws_es_elasticsearch_domain_create() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws es create-elasticsearch-domain --domain-name $domain_name "$@"
}

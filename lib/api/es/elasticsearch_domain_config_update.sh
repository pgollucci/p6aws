p6_aws_es_elasticsearch_domain_config_update() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws es update-elasticsearch-domain-config --domain-name $domain_name "$@"
}

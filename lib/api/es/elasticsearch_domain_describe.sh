p6_aws_es_elasticsearch_domain_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws es describe-elasticsearch-domain --domain-name $domain_name "$@"
}

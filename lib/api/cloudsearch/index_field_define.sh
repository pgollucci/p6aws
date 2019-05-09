p6_aws_cloudsearch_index_field_define() {
    local domain_name="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws cloudsearch define-index-field --domain-name $domain_name --name $name --type $type "$@"
}

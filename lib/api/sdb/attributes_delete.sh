p6_aws_sdb_attributes_delete() {
    local domain_name="$1"
    local item_name="$2"
    shift 2

    p6_log_or_run aws sdb delete-attributes --domain-name $domain_name --item-name $item_name "$@"
}

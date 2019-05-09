p6_aws_backup_resource_untag() {
    local resource_arn="$1"
    local tag_key_list="$2"
    shift 2

    p6_run_write_cmd aws backup untag-resource --resource-arn $resource_arn --tag-key-list $tag_key_list "$@"
}

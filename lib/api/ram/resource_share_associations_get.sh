p6_aws_ram_resource_share_associations_get() {
    local association_type="$1"
    shift 1

    p6_log_and_run aws ram get-resource-share-associations --association-type $association_type "$@"
}

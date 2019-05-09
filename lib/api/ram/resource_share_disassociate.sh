p6_aws_ram_resource_share_disassociate() {
    local resource_share_arn="$1"
    shift 1

    p6_log_or_run aws ram disassociate-resource-share --resource-share-arn $resource_share_arn "$@"
}

p6_aws_cloudtrail_tags_add() {
    local resource_id="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail add-tags --resource-id $resource_id "$@"
}

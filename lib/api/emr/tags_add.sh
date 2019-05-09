p6_aws_emr_tags_add() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws emr add-tags --resource-id $resource_id --tags $tags "$@"
}

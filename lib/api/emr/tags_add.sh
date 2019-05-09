p6_aws_emr_tags_add() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws emr add-tags --resource-id $resource_id --tags $tags "$@"
}

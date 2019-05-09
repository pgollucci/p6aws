p6_aws_workdocs_custom_metadata_create() {
    local resource_id="$1"
    local custom_metadata="$2"
    shift 2

    p6_log_or_run aws workdocs create-custom-metadata --resource-id $resource_id --custom-metadata $custom_metadata "$@"
}

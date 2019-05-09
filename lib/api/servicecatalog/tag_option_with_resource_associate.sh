p6_aws_servicecatalog_tag_option_with_resource_associate() {
    local resource_id="$1"
    local tag_option_id="$2"
    shift 2

    p6_log_or_run aws servicecatalog associate-tag-option-with-resource --resource-id $resource_id --tag-option-id $tag_option_id "$@"
}

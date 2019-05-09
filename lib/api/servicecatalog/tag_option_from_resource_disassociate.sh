p6_aws_servicecatalog_tag_option_from_resource_disassociate() {
    local resource_id="$1"
    local tag_option_id="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog disassociate-tag-option-from-resource --resource-id $resource_id --tag-option-id $tag_option_id "$@"
}

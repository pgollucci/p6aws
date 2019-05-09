p6_aws_servicecatalog_resources_for_tag_option_list() {
    local tag_option_id="$1"
    shift 1

    p6_log_and_run aws servicecatalog list-resources-for-tag-option --tag-option-id $tag_option_id "$@"
}

p6_aws_rds_tags_for_resource_list() {
    local resource_name="$1"
    shift 1

    p6_log_and_run aws rds list-tags-for-resource --resource-name $resource_name "$@"
}

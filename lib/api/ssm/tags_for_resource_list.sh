p6_aws_ssm_tags_for_resource_list() {
    local resource_type="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws ssm list-tags-for-resource --resource-type $resource_type --resource-id $resource_id "$@"
}

p6_aws_workmail_resource_delegates_list() {
    local organization_id="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws workmail list-resource-delegates --organization-id $organization_id --resource-id $resource_id "$@"
}

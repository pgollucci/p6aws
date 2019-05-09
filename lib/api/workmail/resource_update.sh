p6_aws_workmail_resource_update() {
    local organization_id="$1"
    local resource_id="$2"
    shift 2

    p6_log_or_run aws workmail update-resource --organization-id $organization_id --resource-id $resource_id "$@"
}

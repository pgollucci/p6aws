p6_aws_workmail_delegate_to_resource_associate() {
    local organization_id="$1"
    local resource_id="$2"
    local entity_id="$3"
    shift 3

    p6_log_or_run aws workmail associate-delegate-to-resource --organization-id $organization_id --resource-id $resource_id --entity-id $entity_id "$@"
}

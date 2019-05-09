p6_aws_workmail_mailbox_permissions_put() {
    local organization_id="$1"
    local entity_id="$2"
    local grantee_id="$3"
    local permission_values="$4"
    shift 4

    p6_run_write_cmd aws workmail put-mailbox-permissions --organization-id $organization_id --entity-id $entity_id --grantee-id $grantee_id --permission-values $permission_values "$@"
}

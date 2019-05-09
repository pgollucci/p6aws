p6_aws_workmail_mailbox_permissions_delete() {
    local organization_id="$1"
    local entity_id="$2"
    local grantee_id="$3"
    shift 3

    p6_log_or_run aws workmail delete-mailbox-permissions --organization-id $organization_id --entity-id $entity_id --grantee-id $grantee_id "$@"
}

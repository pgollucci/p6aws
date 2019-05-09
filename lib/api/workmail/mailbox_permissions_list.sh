p6_aws_workmail_mailbox_permissions_list() {
    local organization_id="$1"
    local entity_id="$2"
    shift 2

    p6_log_and_run aws workmail list-mailbox-permissions --organization-id $organization_id --entity-id $entity_id "$@"
}

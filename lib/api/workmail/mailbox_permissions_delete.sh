######################################################################
#<
#
# Function:
#      = p6_aws_workmail_mailbox_permissions_delete(organization_id, entity_id, grantee_id)
#
# Arg(s):
#    organization_id - 
#    entity_id - 
#    grantee_id - 
#
#
#>
######################################################################
p6_aws_workmail_mailbox_permissions_delete() {
    local organization_id="$1"
    local entity_id="$2"
    local grantee_id="$3"
    shift 3

    p6_run_write_cmd aws workmail delete-mailbox-permissions --organization-id $organization_id --entity-id $entity_id --grantee-id $grantee_id "$@"
}
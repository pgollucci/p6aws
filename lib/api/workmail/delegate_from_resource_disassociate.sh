######################################################################
#<
#
# Function:
#      = p6_aws_workmail_delegate_from_resource_disassociate(organization_id, resource_id, entity_id)
#
# Arg(s):
#    organization_id - 
#    resource_id - 
#    entity_id - 
#
#
#>
######################################################################
p6_aws_workmail_delegate_from_resource_disassociate() {
    local organization_id="$1"
    local resource_id="$2"
    local entity_id="$3"
    shift 3

    p6_run_write_cmd aws workmail disassociate-delegate-from-resource --organization-id $organization_id --resource-id $resource_id --entity-id $entity_id "$@"
}
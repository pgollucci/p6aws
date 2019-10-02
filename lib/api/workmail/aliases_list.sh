######################################################################
#<
#
# Function:
#	p6_aws_workmail_aliases_list(organization_id, entity_id)
#
#  Args:
#	organization_id - 
#	entity_id - 
#
#>
######################################################################
p6_aws_workmail_aliases_list() {
    local organization_id="$1"
    local entity_id="$2"
    shift 2

    p6_run_read_cmd aws workmail list-aliases --organization-id $organization_id --entity-id $entity_id "$@"
}
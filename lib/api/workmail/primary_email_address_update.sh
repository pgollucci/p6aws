######################################################################
#<
#
# Function:
#	p6_aws_workmail_primary_email_address_update(organization_id, entity_id, email)
#
#  Args:
#	organization_id - 
#	entity_id - 
#	email - 
#
#>
######################################################################
p6_aws_workmail_primary_email_address_update() {
    local organization_id="$1"
    local entity_id="$2"
    local email="$3"
    shift 3

    p6_run_write_cmd aws workmail update-primary-email-address --organization-id $organization_id --entity-id $entity_id --email $email "$@"
}
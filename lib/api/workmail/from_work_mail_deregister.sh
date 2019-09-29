######################################################################
#<
#
# Function:
#      = p6_aws_workmail_from_work_mail_deregister(organization_id, entity_id)
#
# Arg(s):
#    organization_id - 
#    entity_id - 
#
#
#>
######################################################################
p6_aws_workmail_from_work_mail_deregister() {
    local organization_id="$1"
    local entity_id="$2"
    shift 2

    p6_run_write_cmd aws workmail deregister-from-work-mail --organization-id $organization_id --entity-id $entity_id "$@"
}
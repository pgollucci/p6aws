######################################################################
#<
#
# Function:
#      = p6_aws_workmail_to_work_mail_register(organization_id, entity_id, email)
#
# Arg(s):
#    organization_id - 
#    entity_id - 
#    email - 
#
#
#>
######################################################################
p6_aws_workmail_to_work_mail_register() {
    local organization_id="$1"
    local entity_id="$2"
    local email="$3"
    shift 3

    p6_run_write_cmd aws workmail register-to-work-mail --organization-id $organization_id --entity-id $entity_id --email $email "$@"
}
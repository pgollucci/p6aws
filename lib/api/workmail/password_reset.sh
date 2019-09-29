######################################################################
#<
#
# Function:
#      = p6_aws_workmail_password_reset(organization_id, user_id, password)
#
# Arg(s):
#    organization_id - 
#    user_id - 
#    password - 
#
#
#>
######################################################################
p6_aws_workmail_password_reset() {
    local organization_id="$1"
    local user_id="$2"
    local password="$3"
    shift 3

    p6_run_write_cmd aws workmail reset-password --organization-id $organization_id --user-id $user_id --password $password "$@"
}
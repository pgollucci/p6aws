######################################################################
#<
#
# Function:
#      = p6_aws_workmail_user_describe(organization_id, user_id)
#
# Arg(s):
#    organization_id - 
#    user_id - 
#
#
#>
######################################################################
p6_aws_workmail_user_describe() {
    local organization_id="$1"
    local user_id="$2"
    shift 2

    p6_run_read_cmd aws workmail describe-user --organization-id $organization_id --user-id $user_id "$@"
}
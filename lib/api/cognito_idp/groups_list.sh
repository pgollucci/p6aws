######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_groups_list(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_groups_list() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp list-groups --user-pool-id $user_pool_id "$@"
}
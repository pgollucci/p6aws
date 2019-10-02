######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_list_groups_for_user_admin(username, user_pool_id)
#
#  Args:
#	username - 
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_list_groups_for_user_admin() {
    local username="$1"
    local user_pool_id="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp admin-list-groups-for-user --username $username --user-pool-id $user_pool_id "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_users_in_group_list(user_pool_id, group_name)
#
# Arg(s):
#    user_pool_id - 
#    group_name - 
#
#
#>
######################################################################
p6_aws_cognito_idp_users_in_group_list() {
    local user_pool_id="$1"
    local group_name="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp list-users-in-group --user-pool-id $user_pool_id --group-name $group_name "$@"
}
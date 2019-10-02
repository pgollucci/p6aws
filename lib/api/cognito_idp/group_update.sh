######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_group_update(group_name, user_pool_id)
#
#  Args:
#	group_name - 
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_group_update() {
    local group_name="$1"
    local user_pool_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp update-group --group-name $group_name --user-pool-id $user_pool_id "$@"
}
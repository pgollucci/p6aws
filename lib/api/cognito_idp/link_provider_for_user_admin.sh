######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_link_provider_for_user_admin(user_pool_id, destination_user, source_user)
#
#  Args:
#	user_pool_id - 
#	destination_user - 
#	source_user - 
#
#>
######################################################################
p6_aws_cognito_idp_link_provider_for_user_admin() {
    local user_pool_id="$1"
    local destination_user="$2"
    local source_user="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-link-provider-for-user --user-pool-id $user_pool_id --destination-user $destination_user --source-user $source_user "$@"
}
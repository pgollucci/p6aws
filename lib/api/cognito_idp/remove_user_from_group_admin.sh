p6_aws_cognito_idp_remove_user_from_group_admin() {
    local user_pool_id="$1"
    local username="$2"
    local group_name="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-remove-user-from-group --user-pool-id $user_pool_id --username $username --group-name $group_name "$@"
}

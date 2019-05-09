p6_aws_cognito_idp_enable_user_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp admin-enable-user --user-pool-id $user_pool_id --username $username "$@"
}

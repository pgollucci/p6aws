p6_aws_cognito_idp_set_user_password_admin() {
    local user_pool_id="$1"
    local username="$2"
    local password="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-set-user-password --user-pool-id $user_pool_id --username $username --password $password "$@"
}

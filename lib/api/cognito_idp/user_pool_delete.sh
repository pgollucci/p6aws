p6_aws_cognito_idp_user_pool_delete() {
    local user_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp delete-user-pool --user-pool-id $user_pool_id "$@"
}

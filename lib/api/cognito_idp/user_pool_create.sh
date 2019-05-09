p6_aws_cognito_idp_user_pool_create() {
    local pool_name="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp create-user-pool --pool-name $pool_name "$@"
}

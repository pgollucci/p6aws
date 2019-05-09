p6_aws_cognito_idp_user_pool_client_create() {
    local user_pool_id="$1"
    local client_name="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp create-user-pool-client --user-pool-id $user_pool_id --client-name $client_name "$@"
}

p6_aws_cognito_idp_identity_providers_list() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp list-identity-providers --user-pool-id $user_pool_id "$@"
}

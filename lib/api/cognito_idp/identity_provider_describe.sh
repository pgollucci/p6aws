p6_aws_cognito_idp_identity_provider_describe() {
    local user_pool_id="$1"
    local provider_name="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp describe-identity-provider --user-pool-id $user_pool_id --provider-name $provider_name "$@"
}

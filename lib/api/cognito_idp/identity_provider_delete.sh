p6_aws_cognito_idp_identity_provider_delete() {
    local user_pool_id="$1"
    local provider_name="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp delete-identity-provider --user-pool-id $user_pool_id --provider-name $provider_name "$@"
}

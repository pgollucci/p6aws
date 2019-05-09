p6_aws_cognito_identity_identity_pool_create() {
    local identity_pool_name="$1"
    local allow_unauthenticated_identities="$2"
    shift 2

    p6_run_write_cmd aws cognito-identity create-identity-pool --identity-pool-name $identity_pool_name --allow-unauthenticated-identities $allow_unauthenticated_identities "$@"
}

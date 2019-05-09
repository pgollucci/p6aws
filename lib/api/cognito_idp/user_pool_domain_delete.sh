p6_aws_cognito_idp_user_pool_domain_delete() {
    local domain="$1"
    local user_pool_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp delete-user-pool-domain --domain $domain --user-pool-id $user_pool_id "$@"
}

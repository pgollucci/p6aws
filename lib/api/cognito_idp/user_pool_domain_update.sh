p6_aws_cognito_idp_user_pool_domain_update() {
    local domain="$1"
    local user_pool_id="$2"
    local custom_domain_config="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp update-user-pool-domain --domain $domain --user-pool-id $user_pool_id --custom-domain-config $custom_domain_config "$@"
}

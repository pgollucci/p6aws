p6_aws_cognito_idp_custom_attributes_add() {
    local user_pool_id="$1"
    local custom_attributes="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp add-custom-attributes --user-pool-id $user_pool_id --custom-attributes $custom_attributes "$@"
}

p6_aws_cognito_idp_resource_server_describe() {
    local user_pool_id="$1"
    local identifier="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp describe-resource-server --user-pool-id $user_pool_id --identifier $identifier "$@"
}

p6_aws_cognito_idp_resource_server_delete() {
    local user_pool_id="$1"
    local identifier="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp delete-resource-server --user-pool-id $user_pool_id --identifier $identifier "$@"
}

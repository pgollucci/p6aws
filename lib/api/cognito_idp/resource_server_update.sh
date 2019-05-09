p6_aws_cognito_idp_resource_server_update() {
    local user_pool_id="$1"
    local identifier="$2"
    local name="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp update-resource-server --user-pool-id $user_pool_id --identifier $identifier --name $name "$@"
}

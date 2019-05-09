p6_aws_transfer_identity_provider_test() {
    local server_id="$1"
    local user_name="$2"
    shift 2

    p6_log_or_run aws transfer test-identity-provider --server-id $server_id --user-name $user_name "$@"
}

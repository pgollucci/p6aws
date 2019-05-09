p6_aws_quicksight_user_register() {
    local identity_type="$1"
    local email="$2"
    local user_role="$3"
    local aws_account_id="$4"
    local namespace="$5"
    shift 5

    p6_run_write_cmd aws quicksight register-user --identity-type $identity_type --email $email --user-role $user_role --aws-account-id $aws_account_id --namespace $namespace "$@"
}

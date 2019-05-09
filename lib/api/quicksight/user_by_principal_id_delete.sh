p6_aws_quicksight_user_by_principal_id_delete() {
    local principal_id="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_run_write_cmd aws quicksight delete-user-by-principal-id --principal-id $principal_id --aws-account-id $aws_account_id --namespace $namespace "$@"
}

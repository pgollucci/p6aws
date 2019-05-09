p6_aws_glacier_vault_delete() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_write_cmd aws glacier delete-vault --account-id $account_id --vault-name $vault_name "$@"
}

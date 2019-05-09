p6_aws_glacier_tags_to_vault_add() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_log_or_run aws glacier add-tags-to-vault --account-id $account_id --vault-name $vault_name "$@"
}

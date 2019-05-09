p6_aws_glacier_job_initiate() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_log_or_run aws glacier initiate-job --account-id $account_id --vault-name $vault_name "$@"
}

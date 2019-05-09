p6_aws_glacier_data_retrieval_policy_set() {
    local account_id="$1"
    shift 1

    p6_log_or_run aws glacier set-data-retrieval-policy --account-id $account_id "$@"
}

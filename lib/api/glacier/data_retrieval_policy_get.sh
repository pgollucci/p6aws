p6_aws_glacier_data_retrieval_policy_get() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws glacier get-data-retrieval-policy --account-id $account_id "$@"
}

p6_aws_glacier_vaults_list() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws glacier list-vaults --account-id $account_id "$@"
}

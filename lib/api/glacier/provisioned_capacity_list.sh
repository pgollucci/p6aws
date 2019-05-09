p6_aws_glacier_provisioned_capacity_list() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws glacier list-provisioned-capacity --account-id $account_id "$@"
}

p6_aws_glacier_provisioned_capacity_purchase() {
    local account_id="$1"
    shift 1

    p6_log_or_run aws glacier purchase-provisioned-capacity --account-id $account_id "$@"
}

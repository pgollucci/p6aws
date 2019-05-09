p6_aws_securityhub_members_get() {
    local account_ids="$1"
    shift 1

    p6_log_and_run aws securityhub get-members --account-ids $account_ids "$@"
}

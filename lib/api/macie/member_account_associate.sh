p6_aws_macie_member_account_associate() {
    local member_account_id="$1"
    shift 1

    p6_log_or_run aws macie associate-member-account --member-account-id $member_account_id "$@"
}

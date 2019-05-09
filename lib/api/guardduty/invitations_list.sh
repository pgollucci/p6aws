p6_aws_guardduty_invitations_list() {

    p6_log_and_run aws guardduty list-invitations "$@"
}

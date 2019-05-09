p6_aws_ses_identity_delete() {
    local identity="$1"
    shift 1

    p6_log_or_run aws ses delete-identity --identity $identity "$@"
}

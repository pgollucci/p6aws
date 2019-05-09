p6_aws_ses_identity_policies_list() {
    local identity="$1"
    shift 1

    p6_log_and_run aws ses list-identity-policies --identity $identity "$@"
}
